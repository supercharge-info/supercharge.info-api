package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.changelog.ChangeLogEdit;
import com.redshiftsoft.tesla.dao.changelog.ChangeLogDAO;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.dao.LocalDateUtil;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChangeDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.time.Instant;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

import static java.lang.String.format;

@Controller
@RequestMapping("/siteadmin")
public class SiteEditController {

    private static final Logger LOG = Logger.getLogger(SiteEditController.class.getName());

    @Resource
    private SiteDAO siteDAO;

    @Resource
    private ChangeLogDAO changeLogDAO;

    @Resource
    private SiteEditValidation siteEditValidation;

    @Resource
    private SiteDiffLogger siteDiffLogger;

    @Resource
    private DBInfoDAO dbInfoDAO;

    @Resource
    private SiteChangeDAO siteChangeDAO;

    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // load a single site into the edit form
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/load")
    @ResponseBody
    public SiteEditDTO load(@RequestParam Integer siteId) {
        /* Bypass cache here because this is used for the admin/edit-site page. */
        Site site = siteDAO.getById(siteId);
        return SiteEditDTOFunctions.transform(site);
    }

    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // load all sites as SiteEditDTOs without cache
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasAuthority('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/loadAll")
    @ResponseBody
    public List<SiteEditDTO> loadAll() {
        /* Bypass cache here because this is used for the admin/edit-site page. */
        List<SiteEditDTO> dtos = SiteEditDTOFunctions.transform(siteDAO.getAllSites());
        // sort my modified date descending.
        dtos.sort((a, b) -> -1 * a.getDateModified().compareTo(b.getDateModified()));
        return dtos;
    }

    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // save / edit single site from the edit form
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasAnyRole('editor')")
    @Transactional
    @RequestMapping(method = RequestMethod.POST, value = "/edit")
    @ResponseBody
    public JsonResponse saveOrEdit(@RequestBody SiteEditDTO newOrModifiedSite) {
        try {
            User user = Security.user();
            return doSaveNewOrEdit(user, newOrModifiedSite);
        } catch (Exception e) {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            LOG.log(Level.SEVERE, "", e);
            return JsonResponse.error(e);
        }
    }

    private JsonResponse doSaveNewOrEdit(User user, SiteEditDTO newOrModifiedSite) {
        LOG.severe("site name = " + newOrModifiedSite.getName());

        // For now we can only edit sites that are already enabled.
        newOrModifiedSite.setEnabled(true);

        List<String> errorMessages = siteEditValidation.validate(newOrModifiedSite);
        if (errorMessages.isEmpty()) {
            Site site = SiteEditDTOFunctions.transform(newOrModifiedSite);
            if (newOrModifiedSite.getId() == 0) {
                return handleSaveNew(user, site);
            } else {
                return handleEdit(user, site);
            }
        }
        return new JsonResponse(JsonResponse.Result.FAIL, errorMessages);
    }

    private JsonResponse handleEdit(User user, Site site) {
        List<String> messages = Lists.newArrayList();

        Site oldSite = siteDAO.getById(site.getId());
        SiteStatus oldSiteStatus = oldSite.getStatus();

        boolean changes = siteDiffLogger.record(user, oldSite, site);
        if (!changes) {
            messages.add("Nothing to do");
            return new JsonResponse(JsonResponse.Result.FAIL, messages);
        }

        messages.add(format("UPDATED site '%s'", site.getName()));
        siteDAO.update(site);

        if (oldSiteStatus != site.getStatus()) {
            ChangeLogEdit changeLogEdit = ChangeLogEdit.toPersist(site.getId(), ChangeType.UPDATE, site.getStatus(), Instant.now(), Instant.now(), user.getId());
            if (changeLogDAO.getSiteList(site.getId()).isEmpty()) {
                changeLogEdit.setChangeType(ChangeType.ADD);
            }
            changeLogDAO.insert(changeLogEdit);
            messages.add(format("INSERTED changelog for '%s' with status %s", site.getName(), changeLogEdit.getSiteStatus()));
        }

        return new SiteEditResponse(site.getId(), messages);
    }

    private JsonResponse handleSaveNew(User user, Site site) {
        siteDAO.insert(site);

        ChangeLogEdit changeLogEdit = ChangeLogEdit.toPersist(site.getId(), ChangeType.ADD, site.getStatus(), Instant.now(), Instant.now(), user.getId());
        changeLogDAO.insert(changeLogEdit);
        siteDiffLogger.recordNew(user, site);
        return new SiteEditResponse(site.getId(), Lists.newArrayList(
                format("INSERTED site '%s'", site.getName()),
                format("INSERTED changelog for '%s' with status %s", site.getName(), changeLogEdit.getSiteStatus())
        ));
    }

    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // delete a site
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasRole('admin')")
    @RequestMapping(method = RequestMethod.POST, value = "/delete")
    @ResponseBody
    @Transactional
    public void delete(@RequestParam int siteId) {
        siteDAO.delete(siteId);
        dbInfoDAO.setLastModifiedToNow();
    }

    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // update a change log
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasRole('editor')")
    @RequestMapping(method = RequestMethod.POST, value = "/changeEdit")
    @ResponseBody
    @Transactional
    public List<ChangeLogEditDTO> changeEdit(@RequestParam int changeId,
                                       @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
                                       @RequestParam LocalDate changeDate,
                                       @RequestParam SiteStatus siteStatus) {
        User user = Security.user();
        Instant changeDateInstant = changeDate.atTime(12, 0).atZone(LocalDateUtil.ZONE_ID).toInstant();

        // Update procedure
        int siteId = changeLogDAO.update(changeId, changeDateInstant, siteStatus, user.getId());
        List<ChangeLogEdit> changeLogs = changeLogDAO.setFirstToAdded(siteId);
        dbInfoDAO.setLastModifiedToNow();
        return changeLogs.stream().map(new ChangeLogEditDTOFunction())
            .sorted(Comparator.comparing(ChangeLogEditDTO::getChangeDate)
                        .thenComparing(ChangeLogEditDTO::getId).reversed())
            .collect(Collectors.toList());
    }


    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // list changes for a site
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/changeDetail")
    @ResponseBody
    @Transactional
    public List<SiteChangeDTO> listChangeDetail(@RequestParam int siteId) {
        return siteChangeDAO.list(siteId).stream()
                .map(x -> new SiteChangeDTO(
                        x.getSiteId(),
                        x.getUserId(),
                        x.getUsername(),
                        x.getVersion(),
                        x.getFieldName(),
                        x.getOldValue(),
                        x.getNewValue(),
                        x.getChangeDate())).collect(Collectors.toList());
    }


    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // list change logs for a site
    //
    // - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/changeLogEdits")
    @ResponseBody
    @Transactional
    public List<ChangeLogEditDTO> listChangeEdits(@RequestParam int siteId) {
        return changeLogDAO.getChangeLogEdits(siteId).stream()
                .map(new ChangeLogEditDTOFunction())
                .collect(Collectors.toList());
    }


}

package com.redshiftsoft.tesla.web.mvc.changelog;

import com.redshiftsoft.tesla.dao.changelog.ChangeLog;
import com.redshiftsoft.tesla.dao.changelog.ChangeLogDAO;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import com.redshiftsoft.tesla.web.mvc.PageDTO;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import java.time.Instant;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Controller
public class ChangeLogController {
    private static final Logger LOG = Logger.getLogger(ChangeLogController.class.getName());

    @Resource
    private ChangeLogDAO changeLogDAO;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<ChangeLogDTO> cachingHandler;

    @PostConstruct
    public void postConstruct() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "changeLog", new ChangeLogDTOSupplier());
    }

    @RequestMapping(method = RequestMethod.GET, value = "/allChanges")
    @ResponseBody
    public List<ChangeLogDTO> allChanges(@RequestParam(required = false) Integer count) {
        List<ChangeLogDTO> changes = cachingHandler.getValues();
        if (count != null) {
            int toIndex = Math.min(count, changes.size());
            changes = changes.subList(0, toIndex);
        }
        return changes;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/changesByDate")
    @ResponseBody
    public Map<LocalDate, Map<SiteStatus, Integer>> changesByDate() {
        List<ChangeLogDTO> changes = cachingHandler.getValues();
        Map<LocalDate, Map<SiteStatus, Integer>> changesByDate = new HashMap<>();
        for (ChangeLogDTO change : changes) {
            LocalDate d = LocalDate.from(change.getDate());
            if (!changesByDate.containsKey(d)) changesByDate.put(d, new HashMap<>());
            Map<SiteStatus, Integer> c = changesByDate.get(d);
            if (!c.containsKey(change.getSiteStatus())) c.put(change.getSiteStatus(), 1);
            else c.put(change.getSiteStatus(), c.get(change.getSiteStatus()) + 1);
        }
        return changesByDate;
    }

    /**
     * Service for paging through results.
     * <p>
     * Parameter names are those required by datatables.net (https://datatables.net/manual/server-side).
     * <p>
     * No parameters are required.  I specify defaultValue in the @RequestParam where a null default value is not
     * allowed.
     */
    @RequestMapping(method = RequestMethod.GET, value = "/changes")
    @ResponseBody
    public PageDTO<ChangeLogDTO> page(
        @RequestParam(required = false) Integer draw,
        @RequestParam(required = false, defaultValue = "0") Integer start,
        @RequestParam(required = false, defaultValue = "20") Integer length,
        @RequestParam(required = false) ChangeType changeType,
        @RequestParam(required = false) Integer regionId,
        @RequestParam(required = false) Integer countryId,
        @RequestParam(required = false) List<String> state,
        @RequestParam(required = false) List<SiteStatus> status,
        @RequestParam(required = false) Integer stalls,
        @RequestParam(required = false) Integer power,
        @RequestParam(required = false) List<String> stallType,
        @RequestParam(required = false) List<String> plugType,
        @RequestParam(required = false) List<Integer> parking,
        @RequestParam(required = false) List<Integer> openTo,
        @RequestParam(required = false) Boolean otherEVs,
        @RequestParam(required = false) Boolean solarCanopy,
        @RequestParam(required = false) Boolean battery,
        @RequestParam(required = false) String search,
        @RequestParam(required = false, defaultValue = "false") Boolean anyWord
    ) {
        List<ChangeLogDTO> allList = cachingHandler.getValues();

        List<ChangeLogDTO> filteredList = allList
                .stream()
                .filter(cl -> changeType == null || Objects.equals(cl.getChangeType(), changeType))
                .filter(cl -> regionId == null || Objects.equals(cl.getRegionId(), regionId))
                .filter(cl -> countryId == null || Objects.equals(cl.getCountryId(), countryId))
                .filter(cl -> state == null || state.isEmpty() || state.contains(cl.getState()))
                .filter(cl -> status == null || status.isEmpty() || status.contains(cl.getSiteStatus()) ||
                            (cl.getSiteStatus() == SiteStatus.EXPANDING && status.contains(SiteStatus.OPEN)))
                .filter(cl -> stalls == null || cl.getStallCount() >= stalls)
                .filter(cl -> power == null || cl.getPowerKilowatt() >= power)
                .filter(cl -> stallType == null || stallType.isEmpty() ||
                            (cl.getSite().getStalls() != null && cl.getSite().getStalls().matches(String.join(" ", stallType), true)))
                .filter(cl -> plugType == null || plugType.isEmpty() ||
                            (cl.getSite().getPlugs() != null && cl.getSite().getPlugs().matches(String.join(" ", plugType), true)))
                .filter(cl -> cl.getSite().hasParking(parking))
                .filter(cl -> cl.getSite().isOpenTo(openTo))
                // TODO: remove "other EVs" boolean filter in favor of "open to" above
                .filter(cl -> otherEVs == null || cl.isOtherEVs() == otherEVs)
                .filter(cl -> solarCanopy == null || cl.getSite().isSolarCanopy() == solarCanopy)
                .filter(cl -> battery == null || cl.getSite().isBattery() == battery)
                .filter(cl -> search == null || cl.matches(search, anyWord))
                .collect(Collectors.toList());

        List<ChangeLogDTO> pageList = filteredList.stream()
                .skip(start)
                .limit(length)
                .collect(Collectors.toList());

        return new PageDTO<>(draw, length, filteredList.size(), allList.size(), pageList);
    }

    @PreAuthorize("hasAnyRole('editor')")
    @Transactional
    @RequestMapping(method = RequestMethod.POST, value = "/changes/delete")
    @ResponseBody
    public void deleteChange(@RequestParam Integer changeId) {
        LOG.info("Deleting change: " + changeId);
        ChangeLog cl = changeLogDAO.getById(changeId);
        changeLogDAO.delete(changeId);
        if (ChangeType.ADD.equals(cl.getChangeType())) {
            changeLogDAO.setFirstToAdded(cl.getSiteId());
        }
        cachingHandler.reset();
    }

    @PreAuthorize("hasAnyRole('editor')")
    @Transactional
    @RequestMapping(method = RequestMethod.POST, value = "/changes/restoreAdded")
    @ResponseBody
    public void restoreAdded(@RequestParam Integer siteId) {
        changeLogDAO.setFirstToAdded(siteId);
        cachingHandler.reset();
    }

    private class ChangeLogDTOSupplier implements Supplier<List<ChangeLogDTO>> {

        final ChangeLogDTOFunction CONVERTER = new ChangeLogDTOFunction();

        @Override
        public List<ChangeLogDTO> get() {
            List<ChangeLog> logList = changeLogDAO.getList();
            return logList.stream().map(CONVERTER).collect(Collectors.toList());
        }
    }
}

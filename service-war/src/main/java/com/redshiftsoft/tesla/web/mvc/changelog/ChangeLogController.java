package com.redshiftsoft.tesla.web.mvc.changelog;

import com.redshiftsoft.tesla.dao.changelog.ChangeLog;
import com.redshiftsoft.tesla.dao.changelog.ChangeLogDAO;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import com.redshiftsoft.tesla.web.mvc.PageDTO;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;
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
    public List<ChangeLogDTO> allChanges(@RequestParam(value = "count", required = false) Integer count) {
        List<ChangeLogDTO> changes = cachingHandler.getValues();
        if (count != null) {
            int toIndex = Math.min(count, changes.size());
            changes = changes.subList(0, toIndex);
        }
        return changes;
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
    public PageDTO<ChangeLogDTO> page(@RequestParam(required = false)
                                              Integer draw,
                                      @RequestParam(required = false, defaultValue = "0")
                                              Integer start,
                                      @RequestParam(required = false, defaultValue = "20")
                                              Integer length,
                                      @RequestParam(required = false)
                                              Integer regionId,
                                      @RequestParam(required = false)
                                              Integer countryId) {
        List<ChangeLogDTO> allList = cachingHandler.getValues();

        List<ChangeLogDTO> filteredList = allList
                .stream()
                .filter(cl -> regionId == null || Objects.equals(cl.getRegionId(), regionId))
                .filter(cl -> countryId == null || Objects.equals(cl.getCountryId(), countryId))
                .collect(Collectors.toList());

        List<ChangeLogDTO> pageList = filteredList.stream()
                .skip(start)
                .limit(length)
                .collect(Collectors.toList());

        return new PageDTO<>(draw, length, filteredList.size(), allList.size(), pageList);
    }

    @PreAuthorize("hasAnyRole('editor')")
    @Transactional
    @RequestMapping(method = RequestMethod.GET, value = "/changes/delete/{changeId}")
    @ResponseBody
    public void deleteChange(@PathVariable Integer changeId) {
        LOG.info("Deleting change: " + changeId);
        changeLogDAO.delete(changeId);
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
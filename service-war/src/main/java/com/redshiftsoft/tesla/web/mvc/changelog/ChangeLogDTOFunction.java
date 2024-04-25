package com.redshiftsoft.tesla.web.mvc.changelog;

import com.redshiftsoft.tesla.dao.changelog.ChangeLog;
import com.redshiftsoft.tesla.web.mvc.site.SiteDTOFunction;

import java.util.function.Function;

public class ChangeLogDTOFunction implements Function<ChangeLog, ChangeLogDTO> {

    private static final SiteDTOFunction SITE_DTO_FUNCTION = new SiteDTOFunction();

    @Override
    public ChangeLogDTO apply(ChangeLog changeLog) {
        ChangeLogDTO changeLogDTO = new ChangeLogDTO();
        changeLogDTO.setId(changeLog.getId());
        changeLogDTO.setSiteId(changeLog.getSiteId());
        changeLogDTO.setChangeType(changeLog.getChangeType());
        changeLogDTO.setDate(changeLog.getDate());
        changeLogDTO.setSiteStatus(changeLog.getSiteStatus());
        changeLogDTO.setPrevStatus(changeLog.getPrevStatus());
        changeLogDTO.setStallCount(changeLog.getStallCount());
        changeLogDTO.setPrevCount(changeLog.getPrevCount());
        changeLogDTO.setPowerKilowatt(changeLog.getPowerKilowatt());
        changeLogDTO.setOtherEVs(changeLog.isOtherEVs());
        changeLogDTO.setNotify(changeLog.getNotify());

        changeLogDTO.setSiteName(changeLog.getSiteName());
        changeLogDTO.setCountryId(changeLog.getCountryId());
        changeLogDTO.setCountry(changeLog.getCountryName());
        changeLogDTO.setRegionId(changeLog.getRegionId());
        changeLogDTO.setRegion(changeLog.getRegionName());
        changeLogDTO.setState(changeLog.getState());
        changeLogDTO.setSite(SITE_DTO_FUNCTION.apply(changeLog.getSite()));

        return changeLogDTO;
    }

}

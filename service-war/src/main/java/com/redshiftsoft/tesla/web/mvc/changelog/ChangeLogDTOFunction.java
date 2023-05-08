package com.redshiftsoft.tesla.web.mvc.changelog;

import com.redshiftsoft.tesla.dao.changelog.ChangeLog;

import java.util.function.Function;

public class ChangeLogDTOFunction implements Function<ChangeLog, ChangeLogDTO> {

    @Override
    public ChangeLogDTO apply(ChangeLog changeLog) {
        ChangeLogDTO changeLogDTO = new ChangeLogDTO();
        changeLogDTO.setId(changeLog.getId());
        changeLogDTO.setSiteId(changeLog.getSiteId());
        changeLogDTO.setChangeType(changeLog.getChangeType());
        changeLogDTO.setDate(changeLog.getDate());
        changeLogDTO.setSiteStatus(changeLog.getSiteStatus());
        changeLogDTO.setStallCount(changeLog.getStallCount());
        changeLogDTO.setPowerKilowatt(changeLog.getPowerKilowatt());
        changeLogDTO.setOtherEVs(changeLog.isOtherEVs());

        changeLogDTO.setSiteName(changeLog.getSiteName());
        changeLogDTO.setCountryId(changeLog.getCountryId());
        changeLogDTO.setCountry(changeLog.getCountryName());
        changeLogDTO.setRegionId(changeLog.getRegionId());
        changeLogDTO.setRegion(changeLog.getRegionName());
        changeLogDTO.setState(changeLog.getState());

        return changeLogDTO;
    }

}

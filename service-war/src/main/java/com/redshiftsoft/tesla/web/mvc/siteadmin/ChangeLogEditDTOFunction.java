package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.dao.changelog.ChangeLogEdit;

import java.util.function.Function;

public class ChangeLogEditDTOFunction implements Function<ChangeLogEdit, ChangeLogEditDTO> {

    @Override
    public ChangeLogEditDTO apply(ChangeLogEdit cl) {
        ChangeLogEditDTO changeLogDTO = new ChangeLogEditDTO();

        changeLogDTO.setId(cl.getId());
        changeLogDTO.setSiteId(cl.getSiteId());
        changeLogDTO.setChangeDate(cl.getDate());
        changeLogDTO.setChangeType(cl.getChangeType());
        changeLogDTO.setSiteStatus(cl.getSiteStatus());
        changeLogDTO.setNotify(cl.getNotify());
        changeLogDTO.setUserId(cl.getUserId());
        changeLogDTO.setStallCount(cl.getStallCount());
        changeLogDTO.setUsername(cl.getUsername());
        changeLogDTO.setDateModified(cl.getModifiedInstant());

        return changeLogDTO;
    }

}

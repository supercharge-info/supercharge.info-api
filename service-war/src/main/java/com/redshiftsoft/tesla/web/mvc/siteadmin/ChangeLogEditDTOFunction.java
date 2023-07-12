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
        changeLogDTO.setUserId(cl.getUserId());
        changeLogDTO.setUsername(cl.getUsername());
        changeLogDTO.setDateModified(cl.getModifiedInstant());

        return changeLogDTO;
    }

}

package com.redshiftsoft.tesla.web.mvc.siteadmin;

import java.time.Instant;

public class SiteChangeDTO {

    private int siteId;
    private int userId;
    private String username;
    private int version;
    private String fieldName;
    private String oldValue;
    private String newValue;
    private SiteChangeDateDTO changeDate;


    public SiteChangeDTO() {
    }

    public SiteChangeDTO(int siteId, int userId, String username, int version, String fieldName, String oldValue, String newValue, Instant changeDate) {
        this.siteId = siteId;
        this.userId = userId;
        this.username = username;
        this.version = version;
        this.fieldName = fieldName;
        this.oldValue = oldValue;
        this.newValue = newValue;
        this.changeDate = new SiteChangeDateDTO(changeDate);
    }

    public int getSiteId() {
        return siteId;
    }

    public int getUserId() {
        return userId;
    }

    public int getVersion() {
        return version;
    }

    public String getFieldName() {
        return fieldName;
    }

    public String getOldValue() {
        return oldValue;
    }

    public String getNewValue() {
        return newValue;
    }

    public SiteChangeDateDTO getChangeDate() {
        return changeDate;
    }

    public String getUsername() {
        return username;
    }
}

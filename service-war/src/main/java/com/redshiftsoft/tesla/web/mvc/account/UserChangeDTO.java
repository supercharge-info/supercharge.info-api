package com.redshiftsoft.tesla.web.mvc.account;

import com.redshiftsoft.tesla.web.mvc.siteadmin.SiteChangeDateDTO;
import com.redshiftsoft.tesla.web.mvc.site.AddressDTO;

import java.time.Instant;

public class UserChangeDTO {

    private int siteId;
    private int userId;
    private int version;
    private String fieldName;
    private String oldValue;
    private String newValue;
    private SiteChangeDateDTO changeDate;

    private AddressDTO address;
    private String siteName;


    public UserChangeDTO() {
    }

    public UserChangeDTO(int siteId, int userId, int version, String fieldName, String oldValue, String newValue, Instant changeDate, AddressDTO address, String siteName) {
        this.siteId = siteId;
        this.userId = userId;
        this.version = version;
        this.fieldName = fieldName;
        this.oldValue = oldValue;
        this.newValue = newValue;
        this.changeDate = new SiteChangeDateDTO(changeDate);
        this.siteName = siteName;
        this.address = address;
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

    public AddressDTO getAddress() {
        return address;
    }

    public String getSiteName() {
        return siteName;
    }
}

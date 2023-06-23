package com.redshiftsoft.tesla.dao.sitechanges;

import com.redshiftsoft.tesla.dao.site.Address;

import java.time.Instant;

/**
 * Detailed per-field changes. See also 'ChangeLog'.
 */
public class UserChange {

    private int siteId;
    private int userId;
    private int version;
    private String fieldName;
    private String oldValue;
    private String newValue;
    private Instant changeDate;

    /* These fields are populated only when we READ a change, by joining site/user ables. */
    private Address address;
    private String siteName;

    public UserChange() {
    }

    public UserChange(int siteId, int userId, int version, String fieldName, String oldValue, String newValue, Instant changeDate) {
        this.siteId = siteId;
        this.userId = userId;
        this.version = version;
        this.fieldName = fieldName;
        this.oldValue = oldValue;
        this.newValue = newValue;
        this.changeDate = changeDate;
    }

    public int getSiteId() {
        return siteId;
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

    public Instant getChangeDate() {
        return changeDate;
    }

    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public void setOldValue(String oldValue) {
        this.oldValue = oldValue;
    }

    public void setChangeDate(Instant instant) {
        this.changeDate = instant;
    }

    public void setNewValue(String string) {
        this.newValue = string;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int anInt) {
        this.userId = anInt;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int anInt) {
        this.version = anInt;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }
}

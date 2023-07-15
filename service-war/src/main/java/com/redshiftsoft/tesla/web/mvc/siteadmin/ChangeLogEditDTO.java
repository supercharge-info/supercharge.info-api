package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.InstantIsoDateSerializer;

import java.time.Instant;

public class ChangeLogEditDTO {

    private int id;
    private int siteId;
    private Instant changeDate;
    private ChangeType changeType;
    private SiteStatus siteStatus;
    private boolean notify;
    private int userId;
    private String username;
    private SiteChangeDateDTO dateModified;

    /**
     * Constructors
     */
    public ChangeLogEditDTO() {
    }

    public ChangeLogEditDTO(int id, int siteId, Instant changeDate, ChangeType changeType, SiteStatus siteStatus, boolean notify, int userId, String username, Instant dateModified) {
        this.id = id;
        this.siteId = siteId;
        this.changeDate = changeDate;
        this.changeType = changeType;
        this.siteStatus = siteStatus;
        this.notify = notify;
        this.userId = userId;
        this.username = username;
        this.dateModified = new SiteChangeDateDTO(dateModified);
    }

    /**
     * Getters
     */
    public int getId() {
        return id;
    }

    public int getSiteId() {
        return siteId;
    }

    @JsonSerialize(using = InstantIsoDateSerializer.class)
    public Instant getChangeDate() {
        return changeDate;
    }

    public ChangeType getChangeType() {
        return changeType;
    }

    public SiteStatus getSiteStatus() {
        return siteStatus;
    }

    public boolean getNotify() {
        return notify;
    }

    public int getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public SiteChangeDateDTO getDateModified() {
        return dateModified;
    }

    /**
     * Setters
     */
    public void setId(int id) {
        this.id = id;
    }

    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }

    public void setChangeDate(Instant changeDate) {
        this.changeDate = changeDate;
    }

    public void setChangeType(ChangeType changeType) {
        this.changeType = changeType;
    }

    public void setSiteStatus(SiteStatus siteStatus) {
        this.siteStatus = siteStatus;
    }

    public void setNotify(boolean notify) {
        this.notify = notify;
    }

    public void setUserId(int id) {
        this.userId = userId;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setDateModified(Instant dateModified) {
        this.dateModified = new SiteChangeDateDTO(dateModified);
    }
}

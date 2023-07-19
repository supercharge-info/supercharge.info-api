package com.redshiftsoft.tesla.dao.changelog;

import com.google.common.base.Preconditions;
import com.redshiftsoft.tesla.dao.site.SiteStatus;

import java.time.Instant;
import java.util.Collections;
import java.util.List;

/**
 * Represents the change logs displayed in the admin interface.
 * <p>
 * Detailed per-field changes are in the 'site_change' table and are represented by the
 * SiteChange class.
 */
public class ChangeLogEdit implements Comparable<ChangeLogEdit> {

    private int id;

    private int siteId;

    private Instant date;
    private Instant modifiedInstant;

    // ADD, UPDATE
    private ChangeType changeType;

    // PERMIT, CONSTRUCTION, OPEN
    private SiteStatus siteStatus;

    private int userId;
    private String username;

    /**
     * Factory method with all fields required to persist.
     */
    public static ChangeLogEdit toPersist(int siteId, ChangeType changeType, SiteStatus siteStatus, Instant date, Instant modifiedInstant, int userId) {
        return new ChangeLogEdit(siteId, changeType, siteStatus, date, modifiedInstant, userId);
    }

    public ChangeLogEdit() {
    }

    private ChangeLogEdit(int siteId, ChangeType changeType, SiteStatus siteStatus, Instant date, Instant modifiedInstant, int userId) {
        this.siteId = siteId;
        this.date = date;
        this.changeType = changeType;
        this.siteStatus = siteStatus;
        this.modifiedInstant = modifiedInstant;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Instant getDate() {
        return date;
    }

    public void setDate(Instant date) {
        Preconditions.checkArgument(date != null);
        this.date = date;
    }

    public ChangeType getChangeType() {
        return changeType;
    }

    public void setChangeType(ChangeType changeType) {
        Preconditions.checkArgument(changeType != null);
        this.changeType = changeType;
    }

    public SiteStatus getSiteStatus() {
        return siteStatus;
    }

    public void setSiteStatus(SiteStatus siteStatus) {
        this.siteStatus = siteStatus;
    }

    public int getSiteId() {
        return siteId;
    }

    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }

    public Instant getModifiedInstant() {
        return modifiedInstant;
    }

    public void setModifiedInstant(Instant modifiedInstant) {
        this.modifiedInstant = modifiedInstant;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public int compareTo(ChangeLogEdit o) {
        return this.date.compareTo(o.date);
    }

    @Override
    public boolean equals(Object object) {
        return (object == this) ||
                (object instanceof ChangeLogEdit) &&
                        (((ChangeLogEdit) object).getIdentityFields().equals(this.getIdentityFields()));
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    private List<?> getIdentityFields() {
        return Collections.singletonList(getId());
    }

}

package com.redshiftsoft.tesla.dao.changelog;

import com.google.common.base.Preconditions;
import com.redshiftsoft.tesla.dao.site.Plugs;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.site.Stalls;

import java.time.Instant;
import java.util.Collections;
import java.util.List;

/**
 * Represents the user-visible changes displayed on the "Changes" table and persisted
 * in the 'changelog' table.
 * <p>
 * Detailed per-field changes are in the 'site_change' table and are represented by the
 * SiteChange class.
 */
public class ChangeLog implements Comparable<ChangeLog> {

    private int id;

    private int siteId;
    private String siteName;

    private int regionId;
    private String regionName;

    private int countryId;
    private String countryName;

    private String state;

    private Instant date;
    private Instant modifiedInstant;

    // ADD, UPDATE
    private ChangeType changeType;

    // PERMIT, CONSTRUCTION, OPEN, etc
    private SiteStatus siteStatus;
    private SiteStatus prevStatus;

    private boolean notify;
    private int stallCount;
    private int powerKilowatt;
    private boolean otherEVs;

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

    public SiteStatus getPrevStatus() {
        return prevStatus;
    }
    public void setPrevStatus(SiteStatus prevStatus) {
        this.prevStatus = prevStatus;
    }

    public boolean getNotify() {
        return notify;
    }
    public void setNotify(boolean notify) {
        this.notify = notify;
    }

    public int getStallCount() {
        return stallCount;
    }
    public void setStallCount(int stallCount) {
        this.stallCount = stallCount;
    }

    public int getPowerKilowatt() {
        return powerKilowatt;
    }
    public void setPowerKilowatt(int powerKilowatt) {
        this.powerKilowatt = powerKilowatt;
    }

    public boolean isOtherEVs() {
        return otherEVs;
    }
    public void setOtherEVs(boolean otherEVs) {
        this.otherEVs = otherEVs;
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

    public String getSiteName() {
        return siteName;
    }
    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public int getRegionId() {
        return regionId;
    }
    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }

    public String getRegionName() {
        return regionName;
    }
    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public int getCountryId() {
        return countryId;
    }
    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getCountryName() {
        return countryName;
    }
    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public int compareTo(ChangeLog o) {
        return this.date.compareTo(o.date);
    }

    @Override
    public boolean equals(Object object) {
        return (object == this) ||
                (object instanceof ChangeLog) &&
                        (((ChangeLog) object).getIdentityFields().equals(this.getIdentityFields()));
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    private List<?> getIdentityFields() {
        return Collections.singletonList(getId());
    }

}

package com.redshiftsoft.tesla.web.mvc.changelog;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.InstantDayOfWeekSerializer;
import com.redshiftsoft.tesla.web.json.InstantIsoDateSerializer;

import java.time.Instant;

/**
 * {
 * "id"           : 435,
 * "siteId"       : 344,
 * "siteName"     : "Canmore, AB",
 * "changeType"   : "UPDATE",
 * "siteStatus"   : "CONSTRUCTION",
 * "prevStatus"   : "PERMIT",
 * "stallCount"   : 4,
 * "prevCount"    : 4,
 * "date"         : "2014-11-06",
 * "dateFormatted": "Thu, Nov 6 2014"
 * }
 */
public class ChangeLogDTO {

    private int id;
    private int siteId;
    private Instant date;
    private ChangeType changeType;
    private SiteStatus siteStatus;
    private SiteStatus prevStatus;
    private int stallCount;
    private int prevCount;
    private int powerKilowatt;
    private boolean otherEVs;
    private boolean notify;

    private String siteName;
    private int regionId;
    private String region;
    private int countryId;
    private String country;
    private String state;

    public boolean matches(String search, boolean anyWord) {
        if (search == null) return true;
        if (search.indexOf(" ") >= 0) {
            for (String s : search.split(" ")) {
                if (this.matches(s, anyWord)) {
                    if (anyWord) return true;
                } else {
                    if (!anyWord) return false;
                }
            }
            return false;
        }
        search = search.toLowerCase();
        if (search.equals("add") && changeType == ChangeType.ADD) return true;
        if (search.equals("update") && changeType == ChangeType.UPDATE) return true;
        if (String.valueOf(siteId).contains(search)) return true;
        if (siteName != null && siteName.toLowerCase().contains(search)) return true;
        if (siteStatus != null && siteStatus.toString().toLowerCase().contains(search)) return true;
        if (String.valueOf(stallCount).contains(search)) return true;
        if (String.valueOf(powerKilowatt).contains(search)) return true;
        if (state != null && state.toLowerCase().contains(search)) return true;
        if (country != null && country.toLowerCase().contains(search)) return true;
        if (region != null && region.toLowerCase().contains(search)) return true;
        return false;
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    @JsonSerialize(using = InstantDayOfWeekSerializer.class)
    public Instant getDateFormatted() {
        return date;
    }
    @JsonSerialize(using = InstantIsoDateSerializer.class)
    public Instant getDate() {
        return date;
    }
    public void setDate(Instant date) {
        this.date = date;
    }

    public ChangeType getChangeType() {
        return changeType;
    }
    public void setChangeType(ChangeType changeType) {
        this.changeType = changeType;
    }

    public String getSiteName() {
        return siteName;
    }
    public void setSiteName(String siteName) {
        this.siteName = siteName;
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

    public int getStallCount() {
        return stallCount;
    }
    public void setStallCount(int stallCount) {
        this.stallCount = stallCount;
    }

    public int getPrevCount() {
        return prevCount;
    }
    public void setPrevCount(int prevCount) {
        this.prevCount = prevCount;
    }

    public int getPowerKilowatt() {
        return powerKilowatt;
    }
    public void setPowerKilowatt(int powerKilowatt) {
        this.powerKilowatt = powerKilowatt;
    }

    @JsonIgnore
    public boolean isOtherEVs() {
        return otherEVs;
    }
    public void setOtherEVs(boolean otherEVs) {
        this.otherEVs = otherEVs;
    }

    public boolean getNotify() {
        return notify;
    }
    public void setNotify(boolean notify) {
        this.notify = notify;
    }

    public String getRegion() {
        return region;
    }
    public void setRegion(String region) {
        this.region = region;
    }

    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }

    public int getSiteId() {
        return siteId;
    }
    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }

    public int getRegionId() {
        return regionId;
    }
    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }

    public int getCountryId() {
        return countryId;
    }
    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
}



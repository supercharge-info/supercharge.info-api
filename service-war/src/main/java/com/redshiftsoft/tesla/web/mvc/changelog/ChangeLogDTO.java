package com.redshiftsoft.tesla.web.mvc.changelog;

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
 * "siteName"     : "Canmore, Canada",
 * "changeType"   : "UPDATE",
 * "siteStatus"   : "CONSTRUCTION",
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

    private String siteName;
    private int regionId;
    private String region;
    private int countryId;
    private String country;

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
}



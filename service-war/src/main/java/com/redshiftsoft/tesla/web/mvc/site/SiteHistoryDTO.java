package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.InstantIsoDateSerializer;

import java.time.Instant;

public class SiteHistoryDTO {

    private Instant changeDate;
    private SiteStatus siteStatus;
    private Integer stallCount;

    public SiteHistoryDTO() {
    }

    public SiteHistoryDTO(Instant date, SiteStatus status, Integer stallCount) {
        this.changeDate = date;
        this.siteStatus = status;
        this.stallCount = stallCount;
    }

    @JsonSerialize(using = InstantIsoDateSerializer.class)
    public Instant getDate() {
        return changeDate;
    }
    public void setDate(Instant date) {
        this.changeDate = date;
    }

    public SiteStatus getSiteStatus() {
        return siteStatus;
    }
    public void setSiteStatus(SiteStatus status) {
        this.siteStatus = status;
    }

    public Integer getStallCount() {
        return stallCount;
    }
    public void setStallCount(Integer stallCount) {
        this.stallCount = stallCount;
    }


}

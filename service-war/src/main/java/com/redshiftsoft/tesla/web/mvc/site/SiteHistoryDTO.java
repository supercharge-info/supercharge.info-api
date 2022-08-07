package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.InstantIsoDateSerializer;

import java.time.Instant;

public class SiteHistoryDTO {

    private Instant changeDate;
    private SiteStatus siteStatus;

    public SiteHistoryDTO() {
    }

    public SiteHistoryDTO(Instant date, SiteStatus status) {
        this.changeDate = date;
        this.siteStatus = status;
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


}

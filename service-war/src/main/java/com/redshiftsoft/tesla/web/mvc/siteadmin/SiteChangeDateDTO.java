package com.redshiftsoft.tesla.web.mvc.siteadmin;

import java.time.Instant;

public class SiteChangeDateDTO {

    private final long epochSecond;

    public SiteChangeDateDTO() {
        this.epochSecond = 0;
    }

    public SiteChangeDateDTO(Instant instant) {
        this.epochSecond = instant.toEpochMilli() / 1000L;
    }

    public long getEpochSecond() {
        return epochSecond;
    }
}

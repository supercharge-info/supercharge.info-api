package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.web.mvc.JsonResponse;

import java.util.List;

public class SiteEditResponse extends JsonResponse {

    /* If we are saving a new site then return the newly generated siteId to the client. */
    private final int siteId;

    public SiteEditResponse(int siteId, List<String> messages) {
        super(JsonResponse.Result.SUCCESS, messages);
        this.siteId = siteId;
    }

    public int getSiteId() {
        return siteId;
    }
}

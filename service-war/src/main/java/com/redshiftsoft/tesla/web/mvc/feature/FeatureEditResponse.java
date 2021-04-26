package com.redshiftsoft.tesla.web.mvc.feature;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;

public class FeatureEditResponse extends JsonResponse {

    /* If we are saving a new site then return the newly generated siteId to the client. */
    private final int featureId;

    public FeatureEditResponse(int featureId, String message) {
        super(JsonResponse.Result.SUCCESS, Lists.newArrayList(message));
        this.featureId = featureId;
    }

    public int getFeatureId() {
        return featureId;
    }

}

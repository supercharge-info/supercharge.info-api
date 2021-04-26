package com.redshiftsoft.tesla.web.mvc.userroute;

import com.redshiftsoft.tesla.web.mvc.JsonResponse;

public class RouteSaveJsonResponse extends JsonResponse {

    private Integer routeId;

    public RouteSaveJsonResponse(Integer routeId, String message) {
        super(Result.SUCCESS, message);
        this.routeId = routeId;
    }

    public Integer getRouteId() {
        return routeId;
    }

    public void setRouteId(Integer routeId) {
        this.routeId = routeId;
    }
}

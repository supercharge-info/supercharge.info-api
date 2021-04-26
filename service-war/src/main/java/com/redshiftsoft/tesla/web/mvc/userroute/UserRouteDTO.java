package com.redshiftsoft.tesla.web.mvc.userroute;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.user.UserRouteWaypoint;
import com.redshiftsoft.tesla.web.json.InstantSerializer;

import java.time.Instant;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserRouteDTO {

    public int id;
    public String name;
    public List<UserRouteWaypoint> waypoints;

    @JsonSerialize(using = InstantSerializer.class)
    public Instant createdDate;
    @JsonSerialize(using = InstantSerializer.class)
    public Instant modifiedDate;

    @Override
    public String toString() {
        return "UserRouteDTO{" +
                "id='" + id + "'" +
                "name=" + name +
                '}';
    }
}
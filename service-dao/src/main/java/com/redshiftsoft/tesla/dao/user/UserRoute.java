package com.redshiftsoft.tesla.dao.user;

import java.time.Instant;
import java.util.List;

public class UserRoute {

    private Integer id;
    private final String name;
    private final List<UserRouteWaypoint> waypoints;

    private Instant createdDate;
    private Instant modifiedDate;

    public UserRoute(Integer id, String name, List<UserRouteWaypoint> waypoints) {
        this.id = id;
        this.name = name;
        this.waypoints = waypoints;
    }

    public UserRoute(Integer id, String name, List<UserRouteWaypoint> waypoints, Instant createdDate, Instant modifiedDate) {
        this.id = id;
        this.name = name;
        this.waypoints = waypoints;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
    }

    // - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "UserRoute{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", createdDate=" + createdDate +
                ", modifiedDate=" + modifiedDate +
                '}';
    }


    // - - - - - - - - - - - - - - - - - - -
    // getters/setters
    // - - - - - - - - - - - - - - - - - - -

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public List<UserRouteWaypoint> getWaypoints() {
        return waypoints;
    }

    public Instant getCreatedDate() {
        return createdDate;
    }

    public Instant getModifiedDate() {
        return modifiedDate;
    }
}

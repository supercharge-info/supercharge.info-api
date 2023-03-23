package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;
import com.redshiftsoft.tesla.dao.user.MarkerType;

import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserConfigDTO {

    public UserConfigFilterDTO filter;

    public String unit;

    public Double latitude;
    public Double longitude;
    public Integer zoom;

    public MarkerType markerType;
    public Integer markerSize;
    public Integer clusterSize;

    public List<UserConfigMarker> customMarkers;

    @Override
    public String toString() {
        return "UserConfigDTO{" +
                "; unit=" + unit +
                "; coords=" + latitude + "," + longitude +
                "; zoom=" + zoom +
                "; marker=" + markerType + "," + markerSize + "," + clusterSize +
                "; filter=" + filter.toString() +
                '}';
    }
}

package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;

import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserConfigDTO {

    public Integer changesPageRegionId;
    public Integer changesPageCountryId;

    public Integer dataPageRegionId;
    public Integer dataPageCountryId;

    public Integer chartsPageRegionId;
    public Integer chartsPageCountryId;

    public String unit;

    public Double latitude;
    public Double longitude;
    public Integer zoom;

    public List<UserConfigMarker> customMarkers;

    @Override
    public String toString() {
        return "UserConfigDTO{" +
                "changes=" + changesPageRegionId + "," + changesPageCountryId +
                "; data=" + dataPageRegionId + "," + dataPageCountryId +
                "; charts=" + chartsPageRegionId + "," + chartsPageCountryId +
                "; unit=" + unit +
                "; coords=" + latitude + "," + longitude +
                "; zoom=" + zoom +
                '}';
    }
}
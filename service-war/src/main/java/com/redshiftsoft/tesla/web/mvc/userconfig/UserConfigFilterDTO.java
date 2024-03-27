package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;

import java.util.List;
import java.util.stream.Collectors;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserConfigFilterDTO {

    public Integer regionId;
    public Integer countryId;
    public List<String> state;

    public Integer changesPageRegionId;
    public Integer changesPageCountryId;

    public Integer dataPageRegionId;
    public Integer dataPageCountryId;

    public Integer chartsPageRegionId;
    public Integer chartsPageCountryId;

    public List<SiteStatus> status;
    public ChangeType changeType;
    public Integer stalls;
    public Integer power;
    public Boolean otherEVs;
    public Boolean solarCanopy;
    public Boolean battery;
    public List<String> stallType;
    public List<String> plugType;
    public List<Integer> parkingId;
    public String search;

    @Override
    public String toString() {
        return "UserConfigFilterDTO{" +
                "default=" + regionId + "," + countryId + "," + String.join(",", state) +
                "; changes=" + changesPageRegionId + "," + changesPageCountryId +
                "; data=" + dataPageRegionId + "," + dataPageCountryId +
                "; charts=" + chartsPageRegionId + "," + chartsPageCountryId +
                "; status=" + status.stream().map(Enum::name).collect(Collectors.joining(",")) +
                "; changeType=" + changeType +
                "; stalls=" + stalls +
                "; power=" + power +
                "; otherEVs=" + otherEVs +
                "; solarCanopy=" + solarCanopy +
                "; battery=" + battery +
                (stallType == null ? "" : "; stallType=" + String.join(",", stallType)) +
                (plugType == null ? "" : "; plugType=" + String.join(",", plugType)) +
                (parkingId == null ? "" : "; parkingId=" + parkingId.stream().map(String::valueOf).collect(Collectors.joining(","))) +
                "; search=" + search +
                '}';
    }
}

package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.user.UserConfig;

import java.util.function.Function;

public class UserConfigToDTOFunction implements Function<UserConfig, UserConfigDTO> {
    @Override
    public UserConfigDTO apply(UserConfig userConfig) {
        UserConfigDTO dto = new UserConfigDTO();
        dto.unit = userConfig.getUnit().map(Enum::name).orElse(null);

        dto.filter = new UserConfigFilterDTO();

        dto.filter.regionId = userConfig.getRegionId().orElse(null);
        dto.filter.countryId = userConfig.getCountryId().orElse(null);
        dto.filter.state = userConfig.getStates();

        dto.filter.changesPageRegionId = userConfig.getChangesPageRegionId().orElse(null);
        dto.filter.changesPageCountryId = userConfig.getChangesPageCountryId().orElse(null);

        dto.filter.dataPageRegionId = userConfig.getDataPageRegionId().orElse(null);
        dto.filter.dataPageCountryId = userConfig.getDataPageCountryId().orElse(null);

        dto.filter.chartsPageRegionId = userConfig.getChartsPageRegionId().orElse(null);
        dto.filter.chartsPageCountryId = userConfig.getChartsPageCountryId().orElse(null);

        dto.filter.status = userConfig.getSiteStatus();
        dto.filter.changeType = userConfig.getChangeType().orElse(null);

        dto.filter.stalls = userConfig.getStallCount().orElse(null);
        dto.filter.power = userConfig.getPowerKilowatt().orElse(null);

        dto.latitude = userConfig.getLatitude().orElse(null);
        dto.longitude = userConfig.getLongitude().orElse(null);
        dto.zoom = userConfig.getZoom().orElse(null);

        dto.markerType = userConfig.getMarkerType().orElse(null);
        dto.markerSize = userConfig.getMarkerSize().orElse(null);
        dto.clusterSize = userConfig.getClusterSize().orElse(null);
        dto.customMarkers = userConfig.getCustomMarkers();
        return dto;
    }
}

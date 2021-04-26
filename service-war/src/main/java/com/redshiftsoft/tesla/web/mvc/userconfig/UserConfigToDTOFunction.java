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

        dto.changesPageRegionId = userConfig.getChangesPageRegion().map(Region::getId).orElse(null);
        dto.changesPageCountryId = userConfig.getChangesPageCountry().map(Country::getId).orElse(null);

        dto.dataPageRegionId = userConfig.getDataPageRegion().map(Region::getId).orElse(null);
        dto.dataPageCountryId = userConfig.getDataPageCountry().map(Country::getId).orElse(null);

        dto.chartsPageRegionId = userConfig.getChartsPageRegion().map(Region::getId).orElse(null);
        dto.chartsPageCountryId = userConfig.getChartsPageCountry().map(Country::getId).orElse(null);

        dto.latitude = userConfig.getLatitude().orElse(null);
        dto.longitude = userConfig.getLongitude().orElse(null);
        dto.zoom = userConfig.getZoom().orElse(null);
        dto.customMarkers = userConfig.getCustomMarkers();
        return dto;
    }
}

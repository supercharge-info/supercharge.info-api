package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.google.common.collect.ImmutableList;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.user.Unit;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.function.Function;
import java.util.logging.Logger;

@Component
public class UserConfigFromDTOFunction implements Function<UserConfigDTO, UserConfig> {

    private static final Logger LOG = Logger.getLogger(UserConfigFromDTOFunction.class.getName());

    private static final List<SiteStatus> emptyStatus = ImmutableList.of();
    private static final List<UserConfigMarker> emptyMarker = ImmutableList.of();
    private static final List<String> emptyString = ImmutableList.of();
    private static final List<Integer> emptyInteger = ImmutableList.of();

    @Override
    public UserConfig apply(UserConfigDTO dto) {

        validateCoordinates(dto);

        return new UserConfig(
                Unit.fromString(dto.unit),
                dto.filter.regionId,
                dto.filter.countryId,
                dto.filter.state,
                dto.filter.changesPageRegionId,
                dto.filter.changesPageCountryId,
                dto.filter.dataPageRegionId,
                dto.filter.dataPageCountryId,
                dto.filter.chartsPageRegionId,
                dto.filter.chartsPageCountryId,
                dto.filter.status == null ? emptyStatus : dto.filter.status,
                dto.filter.changeType,
                dto.filter.stalls,
                dto.filter.power,
                dto.filter.otherEVs,
                dto.filter.solarCanopy,
                dto.filter.battery,
                dto.filter.stallType == null ? emptyString : dto.filter.stallType,
                dto.filter.plugType == null ? emptyString : dto.filter.plugType,
                dto.filter.parkingId == null ? emptyInteger : dto.filter.parkingId,
                dto.filter.search,
                dto.latitude,
                dto.longitude,
                dto.zoom,
                dto.markerType,
                dto.markerSize,
                dto.clusterSize,
                dto.customMarkers == null ? emptyMarker : dto.customMarkers,
                null,
                -1);
    }

    private static void validateCoordinates(UserConfigDTO dto) {
        if (!UserConfig.isValidLatitude(dto.latitude)) {
            LOG.warning("browser sent invalid latitude: " + dto.latitude);
            dto.latitude = 0.0;
        }
        if (!UserConfig.isValidLongitude(dto.longitude)) {
            LOG.warning("browser sent invalid longitude: " + dto.longitude);
            dto.longitude = 0.0;
        }
        if (dto.customMarkers != null) {
            for (UserConfigMarker m : dto.customMarkers) {
                if (!UserConfig.isValidLatitude(m.getLat())) {
                    LOG.warning("browser sent invalid marker latitude: " + dto.latitude);
                    m.setLat(0.0);
                }
                if (!UserConfig.isValidLongitude(m.getLng())) {
                    LOG.warning("browser sent invalid marker longitude: " + dto.longitude);
                    m.setLng(0.0);
                }
            }
        }
    }
}

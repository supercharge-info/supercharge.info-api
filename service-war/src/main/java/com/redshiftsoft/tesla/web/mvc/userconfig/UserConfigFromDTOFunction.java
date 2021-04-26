package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.google.common.collect.ImmutableList;
import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.CountryDAO;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.site.RegionDAO;
import com.redshiftsoft.tesla.dao.user.Unit;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Component
public class UserConfigFromDTOFunction implements Function<UserConfigDTO, UserConfig> {

    private static final Logger LOG = Logger.getLogger(UserConfigFromDTOFunction.class.getName());

    private static final List<UserConfigMarker> emptyList = ImmutableList.of();

    @Resource
    private CountryDAO countryDAO;
    @Resource
    private RegionDAO regionDAO;

    private Map<Integer, Country> countryMap;
    private Map<Integer, Region> regionMap;

    @PostConstruct
    public void go() {
        countryMap = countryDAO.getAll().stream().collect(Collectors.toMap(Country::getId, Function.identity()));
        regionMap = regionDAO.getAll().stream().collect(Collectors.toMap(Region::getId, Function.identity()));
    }

    @Override
    public UserConfig apply(UserConfigDTO dto) {

        validateCoordinates(dto);

        return new UserConfig(
                Unit.fromString(dto.unit),
                regionMap.get(dto.changesPageRegionId),
                countryMap.get(dto.changesPageCountryId),
                regionMap.get(dto.dataPageRegionId),
                countryMap.get(dto.dataPageCountryId),
                regionMap.get(dto.chartsPageRegionId),
                countryMap.get(dto.chartsPageCountryId),
                dto.latitude,
                dto.longitude,
                dto.zoom,
                dto.customMarkers == null ? emptyList : dto.customMarkers,
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

package com.redshiftsoft.tesla.dao;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.CountryDAO;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.site.RegionDAO;
import com.redshiftsoft.tesla.dao.user.Unit;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;
import kdw.common.math.RandomUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.List;

import static java.lang.System.currentTimeMillis;

@Component
public class TestUserConfigs {

    private final RandomUtils random = RandomUtils.fast();

    @Resource
    private RegionDAO regionDAO;

    @Resource
    private CountryDAO countryDAO;

    public UserConfig create() {

        List<Country> allCountries = countryDAO.getAll();
        List<Region> allRegions = regionDAO.getAll();

        Region changesRegion = random.getElement(allRegions);
        Country changesCountry = random.getElement(allCountries);

        Region dataRegion = random.getElement(allRegions);
        Country dataCountry = random.getElement(allCountries);

        Region chartsRegion = random.getElement(allRegions);
        Country chartsCountry = random.getElement(allCountries);

        Unit unit = random.getElement(Unit.values());

        Double latitude = random.getBoolean() ? null : random.getDouble(-90d, 90d);
        Double longitude = random.getBoolean() ? null : random.getDouble(-180d, 180d);
        Integer zoom = random.getInteger(1, 20);

        Instant lastModified = Instant.ofEpochMilli(currentTimeMillis() - random.getLong(0, 1000L * 60L * 60L * 24L * 365L));
        int version = random.getInteger(1, 1000);

        List<UserConfigMarker> customMarkers = createCustomMarkers(0, 10);

        return new UserConfig(unit, changesRegion, changesCountry, dataRegion, dataCountry, chartsRegion, chartsCountry,
                latitude, longitude, zoom, customMarkers, lastModified, version);
    }

    public List<UserConfigMarker> createCustomMarkers(int min, int max) {
        int customMarkerCount = random.getInteger(min, max);
        List<UserConfigMarker> customMarkers = Lists.newArrayList();
        for (int i = 0; i < customMarkerCount; i++) {
            double lat = random.getDouble(-UserConfig.MAX_LATITUDE, UserConfig.MAX_LATITUDE);
            double lng = random.getDouble(-UserConfig.MAX_LONGITUDE, UserConfig.MAX_LONGITUDE);
            String markerName = "marker" + random.getString(0, 50, 'a', 'z');
            customMarkers.add(new UserConfigMarker(markerName, lat, lng));
        }
        return customMarkers;
    }

}

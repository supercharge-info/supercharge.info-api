package com.redshiftsoft.tesla.dao;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.CountryDAO;
import com.redshiftsoft.tesla.dao.site.Parking;
import com.redshiftsoft.tesla.dao.site.ParkingDAO;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.site.RegionDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.user.MarkerType;
import com.redshiftsoft.tesla.dao.user.Unit;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserConfigMarker;
import com.redshiftsoft.util.NumberUtils;
import com.redshiftsoft.util.RandomUtils;
import com.redshiftsoft.util.StringTools;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import static java.lang.System.currentTimeMillis;

@Component
public class TestUserConfigs {

    private final RandomUtils random = RandomUtils.fast();

    private final static String StallType[] = {"v2", "v3", "v4", "urban", "other", "accessible", "trailerFriendly"};
    private final static String PlugType[] = {"tpc", "nacs", "ccs1", "ccs2", "type2", "gbt"};

    @Resource
    private RegionDAO regionDAO;

    @Resource
    private CountryDAO countryDAO;

    @Resource
    private SiteDAO siteDAO;

    @Resource ParkingDAO parkingDAO;

    public UserConfig create() {

        List<Country> allCountries = countryDAO.getAll();
        List<Region> allRegions = regionDAO.getAll();
        List<Site> allSites = siteDAO.getAllSites();
        List<Integer> allParkingIds = parkingDAO.getAll().stream().map(p->p.getParkingId()).collect(Collectors.toList());

        Integer regionId = random.getElement(allRegions).getId();
        Integer countryId = random.getElement(allCountries.stream().filter(e->e.getRegionId() == regionId).collect(Collectors.toList())).getId();
        List<String> countryStates = allSites.stream().map(e->e.getAddress().getState()).filter(StringTools::isEmpty).collect(Collectors.toList());
        List<String> states = random.getElements(countryStates, random.getInteger((int) NumberUtils.min(countryStates.size(), 1), (int) NumberUtils.min(countryStates.size(), 5)));

        Integer changesRegionId = random.getElement(allRegions).getId();
        Integer changesCountryId = random.getElement(allCountries.stream().filter(e->e.getRegionId() == regionId).collect(Collectors.toList())).getId();

        Integer dataRegionId = random.getElement(allRegions).getId();
        Integer dataCountryId = random.getElement(allCountries.stream().filter(e->e.getRegionId() == regionId).collect(Collectors.toList())).getId();

        Integer chartsRegionId = random.getElement(allRegions).getId();
        Integer chartsCountryId = random.getElement(allCountries.stream().filter(e->e.getRegionId() == regionId).collect(Collectors.toList())).getId();

        Unit unit = random.getElement(Unit.values());

        List<SiteStatus> statuses = random.getElements(Arrays.asList(SiteStatus.values()), random.getInteger(1, SiteStatus.values().length));
        ChangeType changeType = random.getElement(ChangeType.values());
        Integer stalls = random.getInteger(2, 20);
        Integer power = random.getInteger(50, 250);
        Boolean otherEVs = random.getBoolean();
        Boolean solarCanopy = random.getBoolean();
        Boolean battery = random.getBoolean();

        List<String> stallType = random.getElements(Arrays.asList(StallType), random.getInteger(0, StallType.length));
        List<String> plugType = random.getElements(Arrays.asList(PlugType), random.getInteger(0, PlugType.length));
        List<Integer> parkingId = random.getElements(allParkingIds, random.getInteger(0, allParkingIds.size()));

        Double latitude = random.getBoolean() ? null : random.getDouble(-90d, 90d);
        Double longitude = random.getBoolean() ? null : random.getDouble(-180d, 180d);
        Integer zoom = random.getInteger(1, 20);

        MarkerType markerType = random.getElement(MarkerType.values());
        Integer markerSize = random.getInteger(4, 10);
        Integer clusterSize = random.getInteger(1, 9);

        Instant lastModified = Instant.ofEpochMilli(currentTimeMillis() - random.getLong(0, 1000L * 60L * 60L * 24L * 365L));
        int version = random.getInteger(1, 1000);

        List<UserConfigMarker> customMarkers = createCustomMarkers(0, 10);

        return new UserConfig(unit, regionId, countryId, states, changesRegionId, changesCountryId, dataRegionId, dataCountryId, chartsRegionId, chartsCountryId,
                statuses, changeType, stalls, power, otherEVs, solarCanopy, battery, stallType, plugType, parkingId, null,
                latitude, longitude, zoom, markerType, markerSize, clusterSize, customMarkers, lastModified, version);
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

package com.redshiftsoft.tesla.dao.user;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.Region;

import java.time.Instant;
import java.util.List;
import java.util.Optional;

public class UserConfig {

    public static final double MAX_LATITUDE = 90;
    public static final double MAX_LONGITUDE = 180;

    private final Region changesPageRegion;
    private final Country changesPageCountry;

    private final Region dataPageRegion;
    private final Country dataPageCountry;

    private final Region chartsPageRegion;
    private final Country chartsPageCountry;

    private final Unit unit;

    private final Double latitude;
    private final Double longitude;
    private final Integer zoom;

    private final List<UserConfigMarker> customMarkers;

    private final Instant lastModified;
    private final int version;

    public UserConfig(Unit unit,
                      Region changesPageRegion, Country changesPageCountry,
                      Region dataPageRegion, Country dataPageCountry,
                      Region chartsPageRegion, Country chartsPageCountry,
                      Double latitude, Double longitude, Integer zoom,
                      List<UserConfigMarker> customMarkers,
                      Instant lastModified, int version) {
        Preconditions.checkArgument(isValidLatitude(latitude), "invalid lat: %s", latitude);
        Preconditions.checkArgument(isValidLongitude(longitude), "invalid lng: %s", longitude);
        Preconditions.checkNotNull(unit, "unit cannot be null");
        this.changesPageRegion = changesPageRegion;
        this.changesPageCountry = changesPageCountry;
        this.dataPageRegion = dataPageRegion;
        this.dataPageCountry = dataPageCountry;
        this.chartsPageRegion = chartsPageRegion;
        this.chartsPageCountry = chartsPageCountry;
        this.unit = unit;
        this.latitude = latitude;
        this.longitude = longitude;
        this.zoom = zoom;
        this.customMarkers = customMarkers;
        this.lastModified = lastModified;
        this.version = version;
    }

    public static UserConfig create(Unit unit) {
        return new UserConfig(unit, null, null, null, null, null, null, null, null, null, Lists.newArrayList(), Instant.now(), 1);
    }

    // - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "UserConfig{" +
                "changesPageRegion=" + changesPageRegion +
                ", changesPageCountry=" + changesPageCountry +
                ", dataPageRegion=" + dataPageRegion +
                ", dataPageCountry=" + dataPageCountry +
                ", unit=" + unit +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", zoom=" + zoom +
                '}';
    }

    // - - - - - - - - - - - - - - - - - - -
    // static validation methods
    // - - - - - - - - - - - - - - - - - - -

    public static boolean isValidLatitude(Double latitude) {
        return latitude == null || Math.abs(latitude) <= MAX_LATITUDE;
    }

    public static boolean isValidLongitude(Double longitude) {
        return longitude == null || Math.abs(longitude) <= MAX_LONGITUDE;
    }


    // - - - - - - - - - - - - - - - - - - -
    // getters/setters
    // - - - - - - - - - - - - - - - - - - -

    public Optional<Region> getChangesPageRegion() {
        return Optional.ofNullable(changesPageRegion);
    }

    public Optional<Country> getChangesPageCountry() {
        return Optional.ofNullable(changesPageCountry);
    }

    public Optional<Region> getDataPageRegion() {
        return Optional.ofNullable(dataPageRegion);
    }

    public Optional<Country> getDataPageCountry() {
        return Optional.ofNullable(dataPageCountry);
    }

    public Optional<Region> getChartsPageRegion() {
        return Optional.ofNullable(chartsPageRegion);
    }

    public Optional<Country> getChartsPageCountry() {
        return Optional.ofNullable(chartsPageCountry);
    }

    public Optional<Unit> getUnit() {
        return Optional.ofNullable(unit);
    }

    public Optional<Double> getLatitude() {
        return Optional.ofNullable(latitude);
    }

    public Optional<Double> getLongitude() {
        return Optional.ofNullable(longitude);
    }

    public Optional<Integer> getZoom() {
        return Optional.ofNullable(zoom);
    }

    public Instant getLastModified() {
        return lastModified;
    }

    public int getVersion() {
        return version;
    }

    public List<UserConfigMarker> getCustomMarkers() {
        return customMarkers;
    }
}

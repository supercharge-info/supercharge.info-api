package com.redshiftsoft.tesla.dao.user;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;

import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class UserConfig {

    public static final double MAX_LATITUDE = 90;
    public static final double MAX_LONGITUDE = 180;

    private final Integer regionId;
    private final Integer countryId;
    private final List<String> states;

    private final Integer changesPageRegionId;
    private final Integer changesPageCountryId;

    private final Integer dataPageRegionId;
    private final Integer dataPageCountryId;

    private final Integer chartsPageRegionId;
    private final Integer chartsPageCountryId;

    private final List<SiteStatus> siteStatus;
    private final ChangeType changeType;

    private final Integer stallCount;
    private final Integer powerKilowatt;
    private final Boolean otherEVs;
    private final Boolean solarCanopy;
    private final Boolean battery;
    private final List<String> stallType;
    private final List<String> plugType;
    private final List<Integer> parkingId;
    private final String search;

    private final Unit unit;

    private final Double latitude;
    private final Double longitude;
    private final Integer zoom;

    private final MarkerType markerType;
    private final Integer markerSize;
    private final Integer clusterSize;

    private final List<UserConfigMarker> customMarkers;

    private final Instant lastModified;
    private final int version;

    public UserConfig(Unit unit,
                      Integer regionId, Integer countryId, List<String> states,
                      Integer changesPageRegionId, Integer changesPageCountryId,
                      Integer dataPageRegionId, Integer dataPageCountryId,
                      Integer chartsPageRegionId, Integer chartsPageCountryId,
                      List<SiteStatus> siteStatus, ChangeType changeType,
                      Integer stallCount, Integer powerKilowatt,
                      Boolean otherEVs, Boolean solarCanopy, Boolean battery,
                      List<String> stallType, List<String> plugType,
                      List<Integer> parkingId, String search,
                      Double latitude, Double longitude, Integer zoom,
                      MarkerType markerType, Integer markerSize, Integer clusterSize,
                      List<UserConfigMarker> customMarkers,
                      Instant lastModified, int version) {
        Preconditions.checkArgument(isValidLatitude(latitude), "invalid lat: %s", latitude);
        Preconditions.checkArgument(isValidLongitude(longitude), "invalid lng: %s", longitude);
        Preconditions.checkNotNull(unit, "unit cannot be null");
        this.regionId = regionId;
        this.countryId = countryId;
        this.states = states;
        this.changesPageRegionId = changesPageRegionId;
        this.changesPageCountryId = changesPageCountryId;
        this.dataPageRegionId = dataPageRegionId;
        this.dataPageCountryId = dataPageCountryId;
        this.chartsPageRegionId = chartsPageRegionId;
        this.chartsPageCountryId = chartsPageCountryId;
        this.siteStatus = siteStatus;
        this.changeType = changeType;
        this.stallCount = stallCount;
        this.powerKilowatt = powerKilowatt;
        this.otherEVs = otherEVs;
        this.solarCanopy = solarCanopy;
        this.battery = battery;
        this.stallType = stallType;
        this.plugType = plugType;
        this.parkingId = parkingId;
        this.search = search;
        this.unit = unit;
        this.latitude = latitude;
        this.longitude = longitude;
        this.zoom = zoom;
        this.markerType = markerType;
        this.markerSize = markerSize;
        this.clusterSize = clusterSize;
        this.customMarkers = customMarkers;
        this.lastModified = lastModified;
        this.version = version;
    }

    public static UserConfig create(Unit unit) {
        return new UserConfig(unit, null, null, Lists.newArrayList(), null, null, null, null, null, null, Lists.newArrayList(), null, null, null, null, null, null, Lists.newArrayList(), Lists.newArrayList(), Lists.newArrayList(), null, null, null, null, null, null, null, Lists.newArrayList(), Instant.now(), 1);
    }

    // - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "UserConfig{" +
                "regionId=" + changesPageRegionId +
                ", countryId=" + changesPageCountryId +
                ", states=" + String.join(",", states) +
                ", changesPageRegionId=" + changesPageRegionId +
                ", changesPageCountryId=" + changesPageCountryId +
                ", dataPageRegionId=" + dataPageRegionId +
                ", dataPageCountryId=" + dataPageCountryId +
                ", chartsPageRegionId=" + chartsPageRegionId +
                ", chartsPageCountryId=" + chartsPageCountryId +
                ", siteStatus=" + siteStatus.stream().map(Enum::name).collect(Collectors.joining(",")) +
                ", changeType=" + changeType +
                ", stallCount=" + stallCount +
                ", powerKilowatt=" + powerKilowatt +
                ", otherEVs=" + otherEVs +
                ", solarCanopy=" + solarCanopy +
                ", battery=" + battery +
                ", stallType=" + String.join(",", stallType) +
                ", plugType=" + String.join(",", plugType) +
                ", parkingId=" + (parkingId == null ? "" : parkingId.stream().map(String::valueOf).collect(Collectors.joining(","))) +
                ", search=" + search +
                ", unit=" + unit +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", zoom=" + zoom +
                ", markerType=" + markerType +
                ", markerSize=" + markerSize +
                ", clusterSize=" + clusterSize +
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
    public Optional<Integer> getRegionId() {
        return Optional.ofNullable(regionId);
    }

    public Optional<Integer> getCountryId() {
        return Optional.ofNullable(countryId);
    }

    public List<String> getStates() {
        return states;
    }

    public Optional<Integer> getChangesPageRegionId() {
        return Optional.ofNullable(changesPageRegionId);
    }

    public Optional<Integer> getChangesPageCountryId() {
        return Optional.ofNullable(changesPageCountryId);
    }

    public Optional<Integer> getDataPageRegionId() {
        return Optional.ofNullable(dataPageRegionId);
    }

    public Optional<Integer> getDataPageCountryId() {
        return Optional.ofNullable(dataPageCountryId);
    }

    public Optional<Integer> getChartsPageRegionId() {
        return Optional.ofNullable(chartsPageRegionId);
    }

    public Optional<Integer> getChartsPageCountryId() {
        return Optional.ofNullable(chartsPageCountryId);
    }

    public List<SiteStatus> getSiteStatus() {
        return siteStatus;
    }

    public Optional<ChangeType> getChangeType() {
        return Optional.ofNullable(changeType);
    }

    public Optional<Integer> getStallCount() {
        return Optional.ofNullable(stallCount);
    }

    public Optional<Integer> getPowerKilowatt() {
        return Optional.ofNullable(powerKilowatt);
    }

    public Optional<Boolean> isOtherEVs() {
        return Optional.ofNullable(otherEVs);
    }

    public Optional<Boolean> isSolarCanopy() {
        return Optional.ofNullable(solarCanopy);
    }

    public Optional<Boolean> isBattery() {
        return Optional.ofNullable(battery);
    }

    public Optional<List<String>> getStallType() {
        return Optional.ofNullable(stallType);
    }

    public Optional<List<String>> getPlugType() {
        return Optional.ofNullable(plugType);
    }

    public Optional<List<Integer>> getParkingId() {
        return Optional.ofNullable(parkingId);
    }

    public Optional<String> getSearch() {
        return Optional.ofNullable(search);
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

    public Optional<MarkerType> getMarkerType() {
        return Optional.ofNullable(markerType);
    }

    public Optional<Integer> getMarkerSize() {
        return Optional.ofNullable(markerSize);
    }

    public Optional<Integer> getClusterSize() {
        return Optional.ofNullable(clusterSize);
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

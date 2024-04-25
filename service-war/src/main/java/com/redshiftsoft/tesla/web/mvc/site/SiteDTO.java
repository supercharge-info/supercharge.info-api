package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.site.SiteGPS;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.LocalDateDeserializer;
import com.redshiftsoft.tesla.web.json.LocalDateSerializer;
import com.redshiftsoft.util.NumberUtils;

import java.time.LocalDate;
import java.util.Collections;
import java.util.List;

/**
 * DTO object for site:
 * <p>
 * Differences form main Site object:
 * <ul>
 * <li>+ statusDays</li>
 * <li>- dateModified</li>
 * <li>- developerNotes</li>
 * <li> urlDiscuss rather than a string, is a boolean in this class, indicating if there is a url</li>
 * </ul>
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SiteDTO {

    private int id;
    private String locationId;
    private String name;
    private SiteStatus status = SiteStatus.OPEN;
    private AddressDTO address = new AddressDTO();
    private SiteGPS gps;
    private LocalDate dateOpened;
    private int stallCount;
    private String hours;
    private boolean counted;
    private boolean enabled;
    private Integer elevationMeters;

    /* Power in kW */
    private int powerKilowatt;
    private boolean solarCanopy;
    private boolean battery;
    private boolean otherEVs;

    /* Number of days in the current status */
    private int statusDays;
    /* True if there is one, false otherwise */
    private boolean urlDiscuss;

    private StallsDTO stalls = null;
    private PlugsDTO plugs = null;

    private Integer parkingId;
    private String facilityName, facilityHours, accessNotes, addressNotes;
    private Long plugshareId, osmId;

    // - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public boolean equals(Object object) {
        return (this == object) || (object instanceof SiteDTO) && this.getIdentityFields().equals(((SiteDTO) object).getIdentityFields());
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    private List<?> getIdentityFields() {
        return Collections.singletonList(id);
    }

    // - - - - - - - - - - - - - - - - - - - - - - -
    // search
    // - - - - - - - - - - - - - - - - - - - - - - -
    public boolean matches(String search, boolean anyWord) {
        if (search == null) return true;
        if (search.indexOf(" ") >= 0) {
            for (String s : search.split(" ")) {
                if (this.matches(s)) {
                    if (anyWord) return true;
                } else {
                    if (!anyWord) return false;
                }
            }
            return !anyWord;
        }
        return this.matches(search);
    }

    public boolean matches(String search) {
        search = search.toLowerCase();
        if (String.valueOf(id).contains(search)) return true;
        if (name != null && name.toLowerCase().contains(search)) return true;
        if (status != null && status.toString().toLowerCase().contains(search)) return true;
        if (address != null && address.matches(search)) return true;
        if (gps != null) {
            if (String.valueOf(gps.getLatitude()).contains(search)) return true;
            if (String.valueOf(gps.getLongitude()).contains(search)) return true;
        }
        if (String.valueOf(stallCount).contains(search)) return true;
        if (hours != null && hours.toLowerCase().contains(search)) return true;
        if (elevationMeters != null && String.valueOf(elevationMeters).contains(search)) return true;
        if (String.valueOf(powerKilowatt).contains(search)) return true;
        if (stalls != null && stalls.matches(search)) return true;
        if (plugs != null && plugs.matches(search)) return true;
        if (facilityName != null && facilityName.toLowerCase().contains(search)) return true;
        if (facilityHours != null && facilityHours.toLowerCase().contains(search)) return true;
        if (accessNotes != null && accessNotes.toLowerCase().contains(search)) return true;
        if (addressNotes != null && addressNotes.toLowerCase().contains(search)) return true;
        return false;
    }

    public boolean hasParking(List<Integer> parking) {
        return parking == null
            || parking.isEmpty()
            || parking.contains(parkingId)
            || parking.contains(Integer.valueOf(0)) && parkingId == null;
    }

    // When updating the "open_to" lookup table, this should be the only place in the API repo that a corresponding code change is needed
    public boolean isOpenTo(List<Integer> openTo) {

        // If no filter is selected, don't skip any site
        if (openTo == null || openTo.isEmpty()) return true;

        // If "Tesla" filter is checked, include the site if it's marked as NOT allowing other EVs
        if (openTo.contains(Integer.valueOf(1)) && !otherEVs) return true;

        if (otherEVs && plugs != null) {
            // If "NACS" filter is checked, include the site if it's marked as allowing other EVs AND has at least one NACS plug
            if (openTo.contains(Integer.valueOf(2)) && NumberUtils.isPositive(plugs.getNACS())) return true;

            // If "Other" filter is checked, include the site if it's marked as allowing other EVs AND has at least one non-Tesla-specific plug other than NACS
            if (openTo.contains(Integer.valueOf(3)) && (NumberUtils.isPositive(plugs.getCCS1()) || NumberUtils.isPositive(plugs.getCCS2()) || NumberUtils.isPositive(plugs.getGBT()))) return true;
        }

        return false;
    }

    // - - - - - - - - - - - - - - - - - - - - - - -
    // getters/setters
    // - - - - - - - - - - - - - - - - - - - - - - -

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public SiteStatus getStatus() {
        return status;
    }
    public void setStatus(SiteStatus status) {
        this.status = status;
    }

    @JsonSerialize(using = LocalDateSerializer.class)
    @JsonDeserialize(using = LocalDateDeserializer.class)
    public LocalDate getDateOpened() {
        return dateOpened;
    }
    public void setDateOpened(LocalDate dateOpened) {
        this.dateOpened = dateOpened;
    }

    public AddressDTO getAddress() {
        return address;
    }
    public void setAddress(AddressDTO address) {
        this.address = address;
    }

    public SiteGPS getGps() {
        return gps;
    }
    public void setGps(SiteGPS gps) {
        this.gps = gps;
    }

    public Integer getElevationMeters() {
        return elevationMeters;
    }
    public void setElevationMeters(Integer elevationMeters) {
        this.elevationMeters = elevationMeters;
    }

    public boolean getUrlDiscuss() {
        return urlDiscuss;
    }
    public void setUrlDiscuss(boolean urlDiscuss) {
        this.urlDiscuss = urlDiscuss;
    }

    public int getStallCount() {
        return stallCount;
    }
    public void setStallCount(int stallCount) {
        this.stallCount = stallCount;
    }

    public boolean isCounted() {
        return counted;
    }
    public void setCounted(boolean counted) {
        this.counted = counted;
    }

    // Enabled is not part of our web service, only enabled sites are served by the web service.
    @JsonIgnore
    public boolean isEnabled() {
        return enabled;
    }
    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getHours() {
        return hours;
    }
    public void setHours(String hours) {
        this.hours = hours;
    }

    public String getLocationId() {
        return locationId;
    }
    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public int getStatusDays() {
        return statusDays;
    }
    public void setStatusDays(int statusDays) {
        this.statusDays = statusDays;
    }

    public int getPowerKilowatt() {
        return powerKilowatt;
    }
    public void setPowerKilowatt(int powerKilowatt) {
        this.powerKilowatt = powerKilowatt;
    }

    public boolean isSolarCanopy() {
        return solarCanopy;
    }
    public void setSolarCanopy(boolean solarCanopy) {
        this.solarCanopy = solarCanopy;
    }

    public boolean isBattery() {
        return battery;
    }
    public void setBattery(boolean battery) {
        this.battery = battery;
    }

    public boolean isOtherEVs() {
        return otherEVs;
    }
    public void setOtherEVs(boolean otherEVs) {
        this.otherEVs = otherEVs;
    }

    public StallsDTO getStalls() {
        return stalls;
    }
    public void setStalls(StallsDTO stalls) {
        this.stalls = stalls;
    }

    public PlugsDTO getPlugs() {
        return plugs;
    }
    public void setPlugs(PlugsDTO plugs) {
        this.plugs = plugs;
    }

    public Integer getParkingId() {
        return parkingId;
    }
    public void setParkingId(Integer parkingId) {
        this.parkingId = parkingId;
    }

    public String getFacilityName() {
        return facilityName;
    }
    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public String getFacilityHours() {
        return facilityHours;
    }
    public void setFacilityHours(String facilityHours) {
        this.facilityHours = facilityHours;
    }

    public String getAccessNotes() {
        return accessNotes;
    }
    public void setAccessNotes(String accessNotes) {
        this.accessNotes = accessNotes;
    }

    public String getAddressNotes() {
        return addressNotes;
    }
    public void setAddressNotes(String addressNotes) {
        this.addressNotes = addressNotes;
    }

    public Long getPlugshareId() {
        return plugshareId;
    }
    public void setPlugshareId(Long plugshareId) {
        this.plugshareId = plugshareId;
    }

    public Long getOsmId() {
        return osmId;
    }
    public void setOsmId(Long osmId) {
        this.osmId = osmId;
    }
}

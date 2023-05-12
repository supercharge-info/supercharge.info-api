package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.site.SiteGPS;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.web.json.LocalDateDeserializer;
import com.redshiftsoft.tesla.web.json.LocalDateSerializer;

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

    //    /* Power in kW */
    private int powerKilowatt;
    private boolean solarCanopy;
    private boolean battery;
    private boolean otherEVs;

    /* Number of days in the current status */
    private int statusDays;
    /* True if there is one, false otherwise */
    private boolean urlDiscuss;


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
}

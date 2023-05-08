package com.redshiftsoft.tesla.dao.site;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;

/**
 * Used to represent Sites in DB.
 */
public class Site {

    private int id;
    private String locationId;
    private String name;
    private SiteStatus status = SiteStatus.OPEN;
    private Address address = new Address();
    private SiteGPS gps;
    private String urlDiscuss;
    private LocalDate dateOpened;
    private LocalDateTime dateModified;
    private int version;
    private int stallCount;
    private String hours;
    private boolean counted;
    private boolean enabled;
    private Integer elevationMeters;
    private String developerNotes;

    /* Power in kW */
    private int powerKilowatt;
    private boolean solarCanopy;
    private boolean battery;
    private boolean otherEVs;

    // - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "Site{" +
                "id='" + id + "'" +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", address=" + address +
                ", gps=" + gps +
                ", elevationMeters=" + elevationMeters +
                ", locationId='" + locationId + '\'' +
                ", urlDiscuss='" + urlDiscuss + '\'' +
                ", dateOpened=" + dateOpened +
                ", enabled=" + enabled +
                ", stallCount=" + stallCount +
                ", hours=" + hours +
                ", count=" + counted +
                '}';
    }

    @Override
    public boolean equals(Object object) {
        return (this == object) || (object instanceof Site) && this.getIdentityFields().equals(((Site) object).getIdentityFields());
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    private List<?> getIdentityFields() {
        return Collections.singletonList(id);
    }

    // - - - - - - - - - - - - - - - - - - - - - - -
    // derived fields
    // - - - - - - - - - - - - - - - - - - - - - - -

    public boolean isOpen() {
        return getStatus().isOpen();
    }

    public boolean isTempClosed() {
        return getStatus().isClosedTemp();
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

    public LocalDate getDateOpened() {
        return dateOpened;
    }

    public void setDateOpened(LocalDate dateOpened) {
        this.dateOpened = dateOpened;
    }

    public LocalDateTime getDateModified() {
        return dateModified;
    }

    public void setDateModified(LocalDateTime dateModified) {
        this.dateModified = dateModified;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
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

    public String getUrlDiscuss() {
        return urlDiscuss;
    }

    public void setUrlDiscuss(String urlDiscuss) {
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

    public String getDeveloperNotes() {
        return developerNotes;
    }

    public void setDeveloperNotes(String developerNotes) {
        this.developerNotes = developerNotes;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public boolean isOtherEVs() {
        return otherEVs;
    }

    public void setOtherEVs(boolean otherEVs) {
        this.otherEVs = otherEVs;
    }
}

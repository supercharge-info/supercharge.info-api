package com.redshiftsoft.tesla.web.mvc.changeproposal;

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
 * DTO object for site edit proposal:
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SiteChangeProposalDTO {

    private int id;
    private String locationId;
    private String name;
    private SiteStatus status;
    private SiteChangeProposalAddressDTO address;
    private SiteGPS gps;
    private LocalDate dateOpened;
    private Integer stallCount;
    private String hours;
    private Integer elevationMeters;

    private String urlDiscuss;

    private String changeDescription;


    // - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public boolean equals(Object object) {
        return (this == object) || (object instanceof SiteChangeProposalDTO) && this.getIdentityFields().equals(((SiteChangeProposalDTO) object).getIdentityFields());
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    private List<?> getIdentityFields() {
        return Collections.singletonList(id);
    }

    @Override
    public String toString() {
        return "SiteChangeProposalDTO{" +
                "id=" + id +
                ", locationId='" + locationId + '\'' +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", address=" + address +
                ", gps=" + gps +
                ", dateOpened=" + dateOpened +
                ", stallCount=" + stallCount +
                ", hours='" + hours + '\'' +
                ", elevationMeters=" + elevationMeters +
                ", urlDiscuss='" + urlDiscuss + '\'' +
                ", changeDescription='" + changeDescription + '\'' +
                '}';
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

    public SiteChangeProposalAddressDTO getAddress() {
        return address;
    }

    public void setAddress(SiteChangeProposalAddressDTO address) {
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

    public Integer getStallCount() {
        return stallCount;
    }

    public void setStallCount(Integer stallCount) {
        this.stallCount = stallCount;
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

    public String getUrlDiscuss() {
        return urlDiscuss;
    }

    public void setUrlDiscuss(String urlDiscuss) {
        this.urlDiscuss = urlDiscuss;
    }

    public String getChangeDescription() {
        return changeDescription;
    }

    public void setChangeDescription(String changeDescription) {
        this.changeDescription = changeDescription;
    }
}
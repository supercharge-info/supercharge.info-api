package com.redshiftsoft.tesla.dao.site;

import java.time.Instant;
import java.util.Arrays;
import java.util.List;

public class Address {

    private int id;
    private String street;
    private String city;
    private String state;
    private String zip;

    private int countryId;
    private String country;
    private int regionId;
    private String region;

    private int version;
    private Instant modifiedDate;

    public static Address copyOf(Address address) {
        Address newAddress = new Address();
        newAddress.setId(address.getId());
        newAddress.setStreet(address.getStreet());
        newAddress.setCity(address.getCity());
        newAddress.setState(address.getState());
        newAddress.setZip(address.getZip());
        newAddress.setCountryId(address.getCountryId());
        newAddress.setCountry(address.getCountry());
        newAddress.setRegionId(address.getRegionId());
        newAddress.setRegion(address.getRegion());
        newAddress.setVersion(address.getVersion());
        newAddress.setModifiedDate(address.getModifiedDate());
        return newAddress;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", street='" + street + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", zip='" + zip + '\'' +
                ", countryId=" + countryId +
                ", country='" + country + '\'' +
                ", region='" + region + '\'' +
                ", version=" + version +
                ", modifiedDate=" + modifiedDate +
                '}';
    }

    public List<?> getIdentityFields() {
        return Arrays.asList(street, city, state, zip, country, region);
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Address) &&
                this.getIdentityFields().equals(((Address) other).getIdentityFields());
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public Instant getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Instant modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public int getRegionId() {
        return regionId;
    }

    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }
}

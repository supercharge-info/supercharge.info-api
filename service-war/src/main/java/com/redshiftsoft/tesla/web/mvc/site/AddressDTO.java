package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class AddressDTO {

    private int id;
    private String street;
    private String city;
    private String state;
    private String zip;

    private int countryId;
    private String country;
    private int regionId;
    private String region;

    @Override
    public String toString() {
        return "SiteAddress{" +
                "id=" + id +
                ", street='" + street + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", zip='" + zip + '\'' +
                ", country='" + country + '\'' +
                '}';
    }

    public boolean matches(String search, boolean anyWord) {
        if (search == null) return true;
        if (search.indexOf(" ") >= 0) {
            for (String s : search.split(" ")) {
                if (this.matches(s, anyWord)) {
                    if (anyWord) return true;
                } else {
                    if (!anyWord) return false;
                }
            }
            return false;
        }
        search = search.toLowerCase();
        if (street != null && street.toLowerCase().contains(search)) return true;
        if (city != null && city.toLowerCase().contains(search)) return true;
        if (state != null && state.toLowerCase().contains(search)) return true;
        if (zip != null && zip.toLowerCase().contains(search)) return true;
        if (country != null && country.toLowerCase().contains(search)) return true;
        if (region != null && region.toLowerCase().contains(search)) return true;
        return false;
    }

    @JsonIgnore
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

    public int getRegionId() {
        return regionId;
    }
    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }
}

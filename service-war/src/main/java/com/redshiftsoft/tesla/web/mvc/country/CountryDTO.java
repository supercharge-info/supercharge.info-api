package com.redshiftsoft.tesla.web.mvc.country;

/**
 * Differences from Country class:
 * <ul>
 * <li>- isStateRequired field</li>
 * </ul>
 */
public class CountryDTO {

    private int id;
    private String name;
    private String code;
    private String region;
    private int regionId;

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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
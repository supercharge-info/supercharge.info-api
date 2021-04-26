package com.redshiftsoft.tesla.dao.site;

import java.util.Arrays;
import java.util.List;

public class Country {

    private int id;
    private String name;
    private String code;

    private int regionId;
    private String regionName;

    /* Is the state field required for addresses in this country. */
    private boolean stateRequired;

    public Country() {
    }

    public Country(int id, String name, String code, int regionId, String regionName, boolean stateRequired) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.regionId = regionId;
        this.regionName = regionName;
        this.stateRequired = stateRequired;
    }

    // - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - -

    private List<?> getIdentityFields() {
        return Arrays.asList(id, name, code, regionId, regionName, stateRequired);
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Country) &&
                this.getIdentityFields().equals(((Country) other).getIdentityFields());
    }

    @Override
    public String toString() {
        return "Country{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", regionId='" + regionId + '\'' +
                ", regionName='" + regionName + '\'' +
                ", stateRequired=" + stateRequired +
                '}';
    }

    // - - - - - - - - - - - - - -
    // getters/setters
    // - - - - - - - - - - - - - -

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

    public int getRegionId() {
        return regionId;
    }

    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public boolean isStateRequired() {
        return stateRequired;
    }

    public void setStateRequired(boolean stateRequired) {
        this.stateRequired = stateRequired;
    }
}

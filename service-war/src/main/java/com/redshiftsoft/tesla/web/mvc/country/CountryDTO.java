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

    private boolean plugTPC;
    private boolean plugNACS;
    private boolean plugCCS1;
    private boolean plugCCS2;
    private boolean plugType2;
    private boolean plugGBT;

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

    public boolean isPlugTPC() {
        return plugTPC;
    }
    public void setPlugTPC(boolean plugTPC) {
        this.plugTPC = plugTPC;
    }

    public boolean isPlugNACS() {
        return plugNACS;
    }
    public void setPlugNACS(boolean plugNACS) {
        this.plugNACS = plugNACS;
    }

    public boolean isPlugCCS1() {
        return plugCCS1;
    }
    public void setPlugCCS1(boolean plugCCS1) {
        this.plugCCS1 = plugCCS1;
    }

    public boolean isPlugCCS2() {
        return plugCCS2;
    }
    public void setPlugCCS2(boolean plugCCS2) {
        this.plugCCS2 = plugCCS2;
    }

    public boolean isPlugType2() {
        return plugType2;
    }
    public void setPlugType2(boolean plugType2) {
        this.plugType2 = plugType2;
    }

    public boolean isPlugGBT() {
        return plugGBT;
    }
    public void setPlugGBT(boolean plugGBT) {
        this.plugGBT = plugGBT;
    }

}
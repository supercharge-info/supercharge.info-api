package com.redshiftsoft.tesla.dao.site;

public class Stalls {

    private Integer urban;
    private Integer v2;
    private Integer v3;
    private Integer v4;
    private Integer other;
    private Integer accessible;
    private Integer trailerFriendly;

    public Stalls nullIfEmpty() {
        return urban == null && v2 == null && v3 == null && v4 == null && other == null && accessible == null && trailerFriendly == null ? null : this;
    }

    public Integer getUrban() {
        return urban;
    }
    public void setUrban(Integer urban) {
        this.urban = urban;
    }

    public Integer getV2() {
        return v2;
    }
    public void setV2(Integer v2) {
        this.v2 = v2;
    }

    public Integer getV3() {
        return v3;
    }
    public void setV3(Integer v3) {
        this.v3 = v3;
    }

    public Integer getV4() {
        return v4;
    }
    public void setV4(Integer v4) {
        this.v4 = v4;
    }

    public Integer getOther() {
        return other;
    }
    public void setOther(Integer other) {
        this.other = other;
    }

    public Integer getAccessible() {
        return accessible;
    }
    public void setAccessible(Integer accessible) {
        this.accessible = accessible;
    }

    public Integer getTrailerFriendly() {
        return trailerFriendly;
    }
    public void setTrailerFriendly(Integer trailerFriendly) {
        this.trailerFriendly = trailerFriendly;
    }

}

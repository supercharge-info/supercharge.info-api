package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.redshiftsoft.util.NumberUtils;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class StallsDTO {
    
    private Integer urban;
    private Integer v2;
    private Integer v3;
    private Integer v4;
    private Integer other;
    private Integer accessible;
    private Integer trailerFriendly;

    public StallsDTO nullIfEmpty() {
        return urban == null && v2 == null && v3 == null && v4 == null && other == null && accessible == null && trailerFriendly == null ? null : this;
    }

    @JsonIgnore
    public int getTotal() {
        int total = 0;
        if (urban != null) total += urban;
        if (v2 != null) total += v2;
        if (v3 != null) total += v3;
        if (v4 != null) total += v4;
        if (other != null) total += other;
        return total;
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
        if (search.equals("v2") && NumberUtils.isPositive(v2)) return true;
        if (search.equals("v3") && NumberUtils.isPositive(v3)) return true;
        if (search.equals("v4") && NumberUtils.isPositive(v4)) return true;
        if (search.equals("urban") && NumberUtils.isPositive(urban)) return true;
        if (search.startsWith("access") && NumberUtils.isPositive(accessible)) return true;
        if (search.startsWith("trailer") && NumberUtils.isPositive(trailerFriendly)) return true;
        return false;
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

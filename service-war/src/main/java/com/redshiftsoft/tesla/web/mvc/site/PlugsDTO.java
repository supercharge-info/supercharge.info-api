package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.redshiftsoft.util.NumberUtils;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PlugsDTO {

    private Integer TPC;
    private Integer NACS;
    private Integer CCS1;
    private Integer CCS2;
    private Integer Type2;
    private Integer GBT;
    private Integer Other;
    private Integer Multi;

    public PlugsDTO nullIfEmpty() {
        return TPC == null && NACS == null && CCS1 == null && CCS2 == null && Type2 == null && GBT == null && Other == null && Multi == null ? null : this;
    }

    @JsonIgnore
    public int getTotal() {
        int total = 0;
        if (TPC != null) total += TPC;
        if (NACS != null) total += NACS;
        if (CCS1 != null) total += CCS1;
        if (CCS2 != null) total += CCS2;
        if (Type2 != null) total += Type2;
        if (GBT != null) total += GBT;
        if (Other != null) total += Other;
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
            return !anyWord;
        }
        search = search.toLowerCase();
        if (search.equals("tpc") || search.equals("nacs")) {
            if (TPC != null && TPC > 0) return true;
            if (NACS != null && NACS > 0) return true;
        }
        if (search.equals("ccs1") && NumberUtils.isPositive(CCS1)) return true;
        if (search.equals("ccs2") && NumberUtils.isPositive(CCS2)) return true;
        if (search.equals("ccs") && (NumberUtils.isPositive(CCS1) || NumberUtils.isPositive(CCS2))) return true;
        if (search.equals("type2") && NumberUtils.isPositive(Type2)) return true;
        if (search.replace("/", "").equals("gbt") && NumberUtils.isPositive(GBT)) return true;
        if (search.equals("multi") && NumberUtils.isPositive(Multi)) return true;
        if (search.startsWith("magic") && (NumberUtils.isPositive(TPC) || NumberUtils.isPositive(NACS)) && NumberUtils.isPositive(CCS1) && NumberUtils.isPositive(Multi)) return true;
        return false;
    }

    public Integer getTPC() {
        return TPC;
    }
    public void setTPC(Integer TPC) {
        this.TPC = TPC;
    }

    public Integer getNACS() {
        return NACS;
    }
    public void setNACS(Integer NACS) {
        this.NACS = NACS;
    }
    
    public Integer getCCS1() {
        return CCS1;
    }
    public void setCCS1(Integer CCS1) {
        this.CCS1 = CCS1;
    }

    public Integer getCCS2() {
        return CCS2;
    }
    public void setCCS2(Integer CCS2) {
        this.CCS2 = CCS2;
    }

    public Integer getType2() {
        return Type2;
    }
    public void setType2(Integer Type2) {
        this.Type2 = Type2;
    }

    public Integer getGBT() {
        return GBT;
    }
    public void setGBT(Integer GBT) {
        this.GBT = GBT;
    }

    public Integer getOther() {
        return Other;
    }
    public void setOther(Integer Other) {
        this.Other = Other;
    }

    public Integer getMulti() {
        return Multi;
    }
    public void setMulti(Integer Multi) {
        this.Multi = Multi;
    }

}

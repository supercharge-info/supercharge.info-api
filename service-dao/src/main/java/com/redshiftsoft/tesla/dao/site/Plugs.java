package com.redshiftsoft.tesla.dao.site;

public class Plugs {

    private Integer TPC;
    private Integer NACS;
    private Integer CCS1;
    private Integer CCS2;
    private Integer Type2;
    private Integer GBT;
    private Integer Other;
    private Integer Multi;

    public Plugs nullIfEmpty() {
        return TPC == null && NACS == null && CCS1 == null && CCS2 == null && Type2 == null && GBT == null && Other == null && Multi == null ? null : this;
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

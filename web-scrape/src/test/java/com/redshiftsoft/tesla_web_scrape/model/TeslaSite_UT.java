package com.redshiftsoft.tesla_web_scrape.model;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TeslaSite_UT {

    @Test
    public void getStallCount() {
        TeslaSite teslaSite = new TeslaSite();

        teslaSite.setChargersText("<p><strong>Charging<\\/strong><br \\/>2 Supercharger stalls, available 24\\/7<\\/p>");
        assertEquals(2, teslaSite.getStallCount());

        teslaSite.setChargersText("<p><strong>Charging<\\/strong><br \\/>19 Supercharger stalls, available 24\\/7<\\/p>");
        assertEquals(19, teslaSite.getStallCount());

        teslaSite.setChargersText("<p><strong>Charging<\\/strong><br \\/>6 Supercharging stalls, available 24\\/7<\\/p>");
        assertEquals(6, teslaSite.getStallCount());

        teslaSite.setChargersText("\\u003Cp\\u003E\\u003Cstrong\\u003ECharging\\u003C\\/strong\\u003E\\u003Cbr \\/\\u003E8 Superchargers, available 24\\/7\\u003C\\/p\\u003E");
        assertEquals(8, teslaSite.getStallCount());
    }

    @Test
    public void getStallCount_countInHOursField() {
        TeslaSite teslaSite = new TeslaSite();

        teslaSite.setHours("\\u003Cp\\u003E\\u003Cstrong\\u003ECharging\\u003C\\/strong\\u003E\\u003Cbr\\/\\u003E8 Superchargers, available 24\\/7\\u003C\\/p\\u003E");
        assertEquals(8, teslaSite.getStallCount());
    }


    @Test
    public void getStallCount_japanese() {
        TeslaSite teslaSite = new TeslaSite();

        teslaSite.setChargersText("\\u003Cp\\u003E\\u003Cstrong\\u003E\\u5145\\u96fb\\u003C\\/strong\\u003E\\u003Cbr \\/\\u003E\\u30b9\\u30fc\\u30d1\\u30fc\\u30c1\\u30e3\\u30fc\\u30b8\\u30e3\\u30fc\\u30b9\\u30bf\\u30f3\\u30c9\\u6570 2\\u3001\\u7d42\\u65e5\\u5229\\u7528\\u53ef\\u003C\\/p\\u003E");
        assertEquals(2, teslaSite.getStallCount());

    }

}
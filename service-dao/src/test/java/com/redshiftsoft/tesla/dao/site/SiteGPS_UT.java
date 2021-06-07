package com.redshiftsoft.tesla.dao.site;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class SiteGPS_UT {

    @Test
    public void constructor_withSpaceBetween() {
        SiteGPS gps = new SiteGPS("35.0001, -100.0007");

        assertEquals(35.0001, gps.getLatitude(), 1e-9);
        assertEquals(-100.0007, gps.getLongitude(), 1e-9);
    }

    @Test
    public void constructor_withNoSpaces() {
        SiteGPS gps = new SiteGPS("35.0001,-100.0007");

        assertEquals(35.0001, gps.getLatitude(), 1e-9);
        assertEquals(-100.0007, gps.getLongitude(), 1e-9);
    }


}

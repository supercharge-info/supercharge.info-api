package com.redshiftsoft.tesla.dao.user;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class UserConfig_UT {

    @Test
    public void constructor() {
        UserConfig uc = new UserConfig(Unit.KM, null, null, null, null, null, null, 10.5, 0d, null, null, null, 0);
        assertEquals(10.5, uc.getLatitude().orElse(null), 1e-9);
        assertEquals(0.0, uc.getLongitude().orElse(null), 1e-9);
    }

    @Test(expected = IllegalArgumentException.class)
    public void constructor_invalidLatitude() {
        new UserConfig(Unit.KM, null, null, null, null, null, null, 90.5, 0d, null, null, null, 0);
    }

    @Test(expected = IllegalArgumentException.class)
    public void constructor_invalidLongitude() {
        new UserConfig(Unit.KM, null, null, null, null, null, null, 10.5, -180.5, null, null, null, 0);
    }


}
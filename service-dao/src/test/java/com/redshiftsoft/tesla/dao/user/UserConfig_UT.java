package com.redshiftsoft.tesla.dao.user;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class UserConfig_UT {

    public void constructor() {
        UserConfig uc = new UserConfig(Unit.KM, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 10.5, 0d, null, null, null, null, null, null, 0);
        assertEquals(10.5, uc.getLatitude().orElse(null), 1e-9);
        assertEquals(0.0, uc.getLongitude().orElse(null), 1e-9);
    }

    @Test
    public void constructor_invalidLatitude() {
        assertThrows(IllegalArgumentException.class, () -> {
            new UserConfig(Unit.KM, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 90.5, 0d, null, null, null, null, null, null, 0);
        });
    }

    @Test
    public void constructor_invalidLongitude() {
        assertThrows(IllegalArgumentException.class, () -> {
            new UserConfig(Unit.KM, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 10.5, -180.5, null, null, null, null, null, null, 0);
        });
    }


}

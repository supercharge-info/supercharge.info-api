package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.Test;

import java.time.Instant;

import static org.junit.Assert.assertEquals;

public class User_UT {

    @Test
    public void getCreationDateString_whenNull() {
        User user = new User();
        assertEquals("", user.getCreationDateString());
    }

    @Test
    public void getCreationDateString() {
        User user = new User();
        user.setCreationDate(Instant.EPOCH);
        assertEquals("1970-01-01 UTC", user.getCreationDateString());

        user.setCreationDate(Instant.ofEpochMilli(1485729702145L));
        assertEquals("2017-01-29 UTC", user.getCreationDateString());

    }

    @Test
    public void testToString() {
        User user = new User();
        user.toString();
        user = TestUsers.createUser();
        user.toString();
    }


}
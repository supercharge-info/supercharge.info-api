package com.redshiftsoft.util;

import com.google.common.io.BaseEncoding;
import org.junit.Test;

import static org.junit.Assert.*;

public class PasswordHashLogic_UT {

    private PasswordHashLogic hashLogic = new PasswordHashLogic(PasswordHashLogic.PBKDF2_WITH_HMAC_SHA1, 32, 2500);

    @Test
    public void generateNewSalt() {
        String saltString = hashLogic.generateNewSalt();
        assertEquals("32 bytes, 256 bit salt", 32, BaseEncoding.base16().decode(saltString.toUpperCase()).length);
        assertEquals("64 characters hex encoded", 32 * 2, saltString.length());
    }

    @Test
    public void hash() {
        String salt = "0926dc30a68b1b49d1daf542b8f995df771ba852e8c1a56355d7a43c61e51ab8";
        String hashedPassword = hashLogic.hash("password", salt);
        assertEquals("d2b8990e3e44ca3983fcf7c568146863b6b9cdadbc8143ef3cfe2d07d4c908cb", hashedPassword);
    }

    @Test
    public void check() {
        String salt = hashLogic.generateNewSalt();
        String hashedPassword = hashLogic.hash("password", salt);

        assertFalse(hashLogic.check("passwordNOT", hashedPassword, salt));
        assertTrue(hashLogic.check("password", hashedPassword, salt));
    }

    /* Profiling shows 99.8% of cpu time spent in keyFactory.generateSecret() which is designed to take time. */
    @Test
    public void speed() {
        String SALT = "0926dc30a68b1b49d1daf542b8f995df771ba852e8c1a56355d7a43c61e51ab8";
        long startTime = System.currentTimeMillis();
        int count = 0;
        int MAX_TIME_MS = 333;
        while (System.currentTimeMillis() - startTime < MAX_TIME_MS) {
            boolean result = hashLogic.check("password", "d2b8990e3e44ca3983fcf7c568146863b6b9cdadbc8143ef3cfe2d07d4c908cb", SALT);
            assertTrue(result);
            count++;
        }
        int speed = count * (1000 / MAX_TIME_MS);
        assertTrue(String.format("count = %,d count/sec = %,d", count, speed), speed > 5);
    }


}
package com.redshiftsoft;

import org.junit.Test;

import static launch.TomcatLauncher.CODE_UNAUTHORIZED;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

public class Functional_UserLoginController_AccountLocking_IT extends Base_IT {

    @Test
    public void accountsShouldBeLockedAfterSeveralBadTries() {
        String username = R.randomUsername();
        String email = R.randomEmail();
        String password = R.randomPassword();

        createAccount(username, email, password);

        for (int i = 0; i < 8; i++) {
            LoginResponse lr = doLogin(username, password + "_wrong_" + i, CODE_UNAUTHORIZED);
            assertEquals("FAIL", lr.result);
            assertEquals("invalid password", lr.messages.get(0));
            assertNull(lr.username);
            assertNull(lr.roles);
            assertNull(lr.email);
        }

        // Correct password, but account is now locked, so system doesn't even check passwords for 3 minutes.
        LoginResponse lr = doLogin(username, password, CODE_UNAUTHORIZED);
        assertEquals("FAIL", lr.result);
        assertEquals("Account is temporarily locked, try again in 3 minutes.", lr.messages.get(0));
        assertNull(lr.username);
        assertNull(lr.roles);
        assertNull(lr.email);

    }
}

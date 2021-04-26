package com.redshiftsoft;

import org.junit.Test;

import static launch.TomcatLauncher.*;

public class Functional_PasswordController_IT extends Base_IT {

    @Test
    public void change_returns400_forBadPasswords() {

        login("no_roles", "password");

        // BAD: password is too short
        get(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/password/change?password=short");

        // BAD: password is too short
        get(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/password/change?password=");

        // BAD: password cannot contain username
        get(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/password/change?password=XXno_rolesXX");

        // GOOD
        get(CODE_OK, T_JSON, URL_MVC + "/password/change?password=password");

        // should still be able to login with original password
        login("no_roles", "password");
    }


    @Test
    public void reset_return400_forNonExistingUserEmail() {
        get(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/password/reset?username=thisIsANonExistingUsername");
        get(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/password/reset?email=thisIsANonExistingEmail");
    }

}
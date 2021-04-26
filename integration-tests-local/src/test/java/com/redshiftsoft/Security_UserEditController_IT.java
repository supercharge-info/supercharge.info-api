package com.redshiftsoft;

import org.junit.Test;

import static launch.TomcatLauncher.*;

public class Security_UserEditController_IT extends Base_IT {

    @Test
    public void loginRequired() {
        // Unauthorized -- login required
        post(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/user/edit", "{}");

        // logged in, bad request
        login("no_roles", "password");
        post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/edit", "{}");

    }

}
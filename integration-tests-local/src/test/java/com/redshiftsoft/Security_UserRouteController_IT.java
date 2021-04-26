package com.redshiftsoft;

import kdw.common.math.RandomUtils;
import org.junit.Test;

import static launch.TomcatLauncher.*;

public class Security_UserRouteController_IT extends Base_IT {

    @Test
    public void loginRequired() {

        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/userRoute/");
        post(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/userRoute/", "{}");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/userRoute/delete/1000");

        login("no_roles", "password");

        String routeName = "Security_UserRouteController_IT_" + RandomUtils.fast().getLong();

        get(CODE_OK, T_JSON, URL_MVC + "/userRoute/");
        post(CODE_OK, T_JSON, URL_MVC + "/userRoute/", "{\"name\":\"" + routeName + "\", \"waypoints\":[]}");
        get(500, T_HTML + ";charset=utf-8", URL_MVC + "/userRoute/delete/1000");

    }

}
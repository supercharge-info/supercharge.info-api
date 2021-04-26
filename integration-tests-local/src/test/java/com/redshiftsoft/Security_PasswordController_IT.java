package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Assert;
import org.junit.Test;

import static launch.TomcatLauncher.*;

public class Security_PasswordController_IT extends Base_IT {

    @Test
    public void login_doesNotRequireAuthentication() {
        Response r = get(CODE_REDIRECT, T_NONE, URL_MVC + "/password/login?key=notARealKey");
        Assert.assertEquals("https://localhost:9191/", r.location);
    }

    @Test
    public void reset_doesNotRequireAuthentication() {
        get(CODE_OK, T_JSON, URL_MVC + "/password/reset?username=feature_only");
    }

    @Test
    public void change_requiresAuthentication() {
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/password/change?password=newPassword");

        login("no_roles", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/password/change?password=newPassword");
        get(CODE_OK, T_JSON, URL_MVC + "/password/change?password=password");
    }


}
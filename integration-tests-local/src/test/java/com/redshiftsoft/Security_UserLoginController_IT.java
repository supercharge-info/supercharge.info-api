package com.redshiftsoft;

import com.google.common.collect.ImmutableMap;
import com.redshiftsoft.lib.http.Response;
import org.junit.Test;

import java.util.Collections;
import java.util.Map;

import static launch.TomcatLauncher.*;
import static org.junit.Assert.assertTrue;

public class Security_UserLoginController_IT extends Base_IT {

    @Test
    public void login_goodPassword() {
        // when
        Response r = postForm(CODE_OK, T_JSON, URL_MVC + "/login", userPasswordMap("editor_only", "password"));

        // then -- should have received set-cookie header.
        String header = r.getHeader("Set-Cookie");
        assertTrue(header.contains("user="));

        // then -- loginCheck
        loginCheck("SUCCESS", "editor_only", Collections.singletonList("editor"), Collections.singletonList("Success"));
    }

    @Test
    public void login_badPassword() {
        // when
        Response r = postForm(CODE_UNAUTHORIZED, T_JSON, URL_MVC + "/login", userPasswordMap("editor", "XXXXXXX"));

        // then -- should have NOT received set-cookie header.
        r.assertNoHeader("Set-Cookie");

        // then -- login check
        loginCheck("FAIL", null, null, null);
    }

    @Test
    public void testLogout() {
        // login success
        postForm(CODE_OK, T_JSON, URL_MVC + "/login", userPasswordMap("feature_only", "password"));

        // then -- loginCheck
        loginCheck("SUCCESS", "feature_only", Collections.singletonList("feature"), Collections.singletonList("Success"));

        // logout should redirect to app context
        logout();

        // then -- loginCheck
        loginCheck("FAIL", null, null, null);
    }

    @Test
    public void logoutTwice() {
        // login success
        postForm(CODE_OK, T_JSON, URL_MVC + "/login", userPasswordMap("feature_only", "password"));

        // then -- loginCheck
        loginCheck("SUCCESS", "feature_only", Collections.singletonList("feature"), Collections.singletonList("Success"));

        // then -- logout once
        logout();

        // then -- should be able to hit logout url after already logged out
        logout();
    }

    @Test
    public void loginResults() {
        // requires login
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/login/results");

        // then -- loginCheck
        login("feature_only", "password");

        // requires login
        get(CODE_OK, T_JSON, URL_MVC + "/login/results");

    }

    private static Map<String, String> userPasswordMap(String username, String password) {
        return ImmutableMap.of("username", username, "password", password);
    }

}
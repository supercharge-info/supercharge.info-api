package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Test;

import static launch.TomcatLauncher.*;
import static org.junit.Assert.assertEquals;

public class Security_IT extends Base_IT {

    @Test
    public void changeLogController() {
        get(CODE_OK, T_JSON, URL_MVC + "/allChanges");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/changes/delete/1000");

        login("no_roles", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/allChanges");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/changes/delete/1000");

        login("admin_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/allChanges");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/changes/delete/1000");

        login("editor_only", "password");

        get(CODE_OK, T_NONE, URL_MVC + "/changes/delete/1000");
    }

    @Test
    public void changeProposalController() {
        post(CODE_OK, T_NONE, URL_MVC + "/changeProposal/submit", "{\"id\":100, \"elevationMeters\":100}");
        get(CODE_OK, T_JSON, URL_MVC + "/changeProposal/list");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/changeProposal/clear");

        login("no_roles", "password");

        post(CODE_OK, T_NONE, URL_MVC + "/changeProposal/submit", "{\"id\":100, \"elevationMeters\":100}");
        get(CODE_OK, T_JSON, URL_MVC + "/changeProposal/list");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/changeProposal/clear");

        login("admin_only", "password");

        post(CODE_OK, T_NONE, URL_MVC + "/changeProposal/submit", "{\"id\":100, \"elevationMeters\":100}");
        get(CODE_OK, T_JSON, URL_MVC + "/changeProposal/list");
        get(CODE_OK, T_JSON, URL_MVC + "/changeProposal/clear");
    }

    @Test
    public void dbInfoController() {
        get(CODE_OK, T_JSON, URL_MVC + "/databaseInfo");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/setLastModifiedToNow");

        login("no_roles", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/databaseInfo");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/setLastModifiedToNow");

        login("admin_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/databaseInfo");
        get(CODE_OK, T_JSON, URL_MVC + "/setLastModifiedToNow");
    }

    @Test
    public void countryController() {
        get(CODE_OK, T_JSON, URL_MVC + "/country");
        get(CODE_OK, T_JSON, URL_MVC + "/countryAll");
    }

    @Test
    public void regionController() {
        get(CODE_OK, T_JSON, URL_MVC + "/region");
    }

    @Test
    public void siteController() {
        int siteId = createSite("http://example.com/testUrlDiscuss");

        get(CODE_OK, T_JSON, URL_MVC + "/allSites");
        Response r = get(CODE_REDIRECT, T_NONE, URL_MVC + "/discuss?siteId=" + siteId);
        assertEquals("http://example.com/testUrlDiscuss", r.location);

        get(CODE_OK, T_JSON, URL_MVC + "/site/stallCount");
    }

    @Test
    public void systemController() {
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/system/properties");

        login("no_roles", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/system/properties");

        login("editor_only", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/system/properties");

        login("admin_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/system/properties");
    }

    @Test
    public void userConfigController() {
        get(CODE_OK, T_JSON, URL_MVC + "/userConfig/");
        post(CODE_OK, T_NONE, URL_MVC + "/userConfig/", "{}");
    }

    @Test
    public void userCreateController() {
        String username = R.randomUsername();
        String email = R.randomEmail();
        String password = R.randomPassword();
        // login NOT required
        createAccount(username, email, password);
    }

    @Test
    public void validationController() {
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/validation/database");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/validation/webscrape");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/validation/tesla-source");

        login("no_roles", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/validation/database");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/validation/webscrape");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/validation/tesla-source");

        login("editor_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/validation/database");
        get(CODE_OK, T_JSON, URL_MVC + "/validation/webscrape");
        get(CODE_OK, T_JSON, URL_MVC + "/validation/tesla-source");
    }

    @Test
    public void versionController() {
        get(CODE_OK, T_JSON, URL_MVC + "/version/number");
        get(CODE_OK, T_JSON, URL_MVC + "/version/timestamp");
    }

    @Test
    public void emailVerificationController() {
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/email-verification/verify");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/email-verification/send");

        login("no_roles", "password");

        get(CODE_REDIRECT, T_NONE, URL_MVC + "/email-verification/verify?key=non-exiting-key");
        get(CODE_OK, T_JSON, URL_MVC + "/email-verification/send");
    }

}
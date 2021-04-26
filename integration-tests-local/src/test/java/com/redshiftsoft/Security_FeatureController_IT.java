package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Test;

import java.util.List;

import static launch.TomcatLauncher.*;

public class Security_FeatureController_IT extends Base_IT {

    @Test
    public void featureController() {

        // Not logged in.

        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/feature/load/100");
        post(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/feature/edit", "");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/feature/delete/100");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/list");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/check");

        login("no_roles", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/load/100");
        post(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/edit", "");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/delete/100");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/list");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/check");

        login("editor_only", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/load/100");
        post(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/edit", "");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/delete/100");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/list");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/check");

        login("feature_only", "password");

        Response ok = post(CODE_OK, T_JSON, URL_MVC + "/feature/edit", BODY);
        FeatureResponse r = ok.bodyAs(FeatureResponse.class);
        get(CODE_OK, T_JSON, URL_MVC + "/feature/load/" + r.featureId);
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/feature/delete/" + r.featureId);
        get(CODE_OK, T_JSON, URL_MVC + "/feature/list");
        get(CODE_OK, T_JSON, URL_MVC + "/feature/check");

        login("admin_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/feature/delete/" + r.featureId);
    }

    private static final String BODY = "{\"id\":\"\",\"addedDate\":\"2017-05-10\",\"description\":\"Security_FeatureController_IT\",\"title\":\"stuff\"}";

    private static class FeatureResponse {
        String result;
        List<String> messages;
        int featureId;
    }

}

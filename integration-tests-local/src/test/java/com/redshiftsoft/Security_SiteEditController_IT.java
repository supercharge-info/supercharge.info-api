package com.redshiftsoft;

import org.junit.Test;

import static launch.TomcatLauncher.*;

public class Security_SiteEditController_IT extends Base_IT {

    @Test
    public void siteEditController() {
        int siteId = createSite("");

        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/siteadmin/load?siteId=" + siteId);
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/siteadmin/delete?siteId=" + siteId);
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/siteadmin/loadAll");
        get(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/siteadmin/changeDetail");
        post(CODE_UNAUTHORIZED, T_NONE, URL_MVC + "/siteadmin/edit", "");

        login("feature_only", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/load?siteId=" + siteId);
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/delete?siteId=" + siteId);
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/loadAll");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/changeDetail");
        post(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/edit", "");

        login("no_roles", "password");

        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/load?siteId=100");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/delete?siteId=" + siteId);
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/loadAll");
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/changeDetail");
        post(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/edit", "");

        login("editor_only", "password");

        get(CODE_OK, T_JSON, URL_MVC + "/siteadmin/load?siteId=" + siteId);
        get(CODE_FORBIDDEN, T_NONE, URL_MVC + "/siteadmin/delete?siteId=" + siteId);
        get(CODE_OK, T_JSON, URL_MVC + "/siteadmin/loadAll");
        get(CODE_OK, T_JSON, URL_MVC + "/siteadmin/changeDetail?siteId=" + siteId);
        post(CODE_OK, T_JSON, URL_MVC + "/siteadmin/edit", SITE_EDIT_POST_BODY);

        login("admin_editor", "password");

        get(CODE_OK, T_NONE, URL_MVC + "/siteadmin/delete?siteId=" + siteId);
    }

    private static final String SITE_EDIT_POST_BODY = "{\"id\":\"348\",\"locationId\":\"westhartfordsupercharger\",\"name\":\"West Hartford, CT\",\"status\":\"OPEN\",\"dateOpened\":\"2014-12-05\",\"hours\":\"\",\"counted\":\"true\",\"gps\":{\"latitude\":\"41.722672\",\"longitude\":\"-72.759717\"},\"elevationMeters\":\"52\",\"urlDiscuss\":\"http://www.teslamotorsclub.com/showthread.php/35937-Supercharger-West-Hartford-CT\",\"stallCount\":\"8\",\"address\":{\"street\":\"1445 New Britain Ave\",\"city\":\"West Hartford\",\"state\":\"CT\",\"zip\":\"06110\",\"countryId\":\"100\"},\"powerKiloWatt\":\"0\",\"solarCanopy\":\"false\",\"battery\":\"false\",\"developerNotes\":\".\"}";

}

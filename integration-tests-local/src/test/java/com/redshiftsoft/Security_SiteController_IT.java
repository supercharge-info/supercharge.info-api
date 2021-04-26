package com.redshiftsoft;

import org.junit.Test;

import java.util.Random;

import static launch.TomcatLauncher.*;

public class Security_SiteController_IT extends Base_IT {

    @Test
    public void returnsRedirect() {
        int siteId = createSite("");

        get(CODE_REDIRECT, T_NONE, URL_MVC + "/discuss?siteId=" + siteId);
    }

    @Test
    public void returnsNotFoundForBadSiteIds() {
        int siteId = new Random().nextInt();

        get(CODE_NOT_FOUND, T_HTML_UTF8, URL_MVC + "/discuss?siteId=" + siteId);
    }

}

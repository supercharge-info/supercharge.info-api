package com.redshiftsoft;

import org.junit.Test;

import static launch.TomcatLauncher.*;

public class ServerStart_IT extends Base_IT {

    @Test
    public void serverStarted() {
        get(CODE_NOT_FOUND, T_HTML_UTF8, URL_BASE + "/foobar");
        get(CODE_REDIRECT, T_NONE, URL_SERVICE);
        get(CODE_OK, T_JSON, URL_SERVICE + "/supercharge/sites");
    }
}

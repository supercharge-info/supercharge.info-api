package com.redshiftsoft.tesla.web.mvc.feature;

import javax.servlet.http.Cookie;

/**
 * This cookie stores the featureId of the last feature the user was notified of.
 */
public class FeatureCookie extends Cookie {

    public static final String COOKIE_NAME = "feature";

    public FeatureCookie(int featureId) {
        super(COOKIE_NAME, String.valueOf(featureId));
        // This cookie should live forever.
        setMaxAge(Integer.MAX_VALUE);
        //
        setPath("/");
    }
}

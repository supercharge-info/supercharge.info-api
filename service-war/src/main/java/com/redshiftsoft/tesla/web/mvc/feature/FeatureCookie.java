package com.redshiftsoft.tesla.web.mvc.feature;

import org.springframework.http.ResponseCookie;

/**
 * This cookie stores the featureId of the last feature the user was notified of.
 */
public class FeatureCookie {

    public static final String COOKIE_NAME = "feature";

    public static ResponseCookie.ResponseCookieBuilder from(int featureId) {
        return ResponseCookie
            .from(COOKIE_NAME, String.valueOf(featureId))
            // This cookie should live forever.
            .maxAge(Integer.MAX_VALUE)
            .path("/");
    }
}

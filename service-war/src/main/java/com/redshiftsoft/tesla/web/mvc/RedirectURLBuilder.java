package com.redshiftsoft.tesla.web.mvc;

import javax.servlet.http.HttpServletRequest;

public class RedirectURLBuilder {

    public static String build(HttpServletRequest request) {
        String scheme = request.isSecure() ? "https" : "http";
        int port = request.getServerPort();
        String portPart = (port == 80 || port == 443) ? "" : (":" + port);
        return "redirect:" + scheme + "://" + request.getServerName() + portPart + "/";
    }
}

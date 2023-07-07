package com.redshiftsoft.tesla.web.filter;

import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseCookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieHelper {


    /**
     * Just looks at all available cookies and returns the one we are interested in.
     *
     * @param request Servlet request.
     * @return NULL if the request does not contain the cookie we are looking for.
     */
    public static Cookie getCookie(final HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookieName.equals(cookie.getName())) {
                    return cookie;
                }
            }
        }
        return null;
    }

    /**
     * Add the specified cookie builder to the the response.
     */
    public static void addCookie(final HttpServletRequest request, final HttpServletResponse response, ResponseCookie.ResponseCookieBuilder cookie) {
        /* Important security measure: see design decisions on cookie security. */
        if (request.isSecure()) {
            cookie = cookie.secure(true);
        } else if ("development".equals(System.getProperty("spring.profiles.active"))) {
            cookie = cookie.secure(false);
        }
        response.addHeader(HttpHeaders.SET_COOKIE, cookie.sameSite("Lax").build().toString());
    }

    /**
     * Call this method to remove/delete any existing cookies
     */
    public static void removeCookie(final HttpServletResponse response, String cookieName) {
        Cookie cookie = new Cookie(cookieName, null);
        // Zero causes the cookie to be deleted.
        cookie.setMaxAge(0);
        // This may not be right for all apps.
        cookie.setPath("/");
        response.addCookie(cookie);
    }


}

package com.redshiftsoft.tesla.web.filter;


import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.ThreadScope;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;
import kdw.common.jee.web.servletapi.CookieHelper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * This filter puts a 'User' object in thread scope based on the user login cookie in each request.
 */
@Component
public class UserFilter implements Filter {

    private static final Logger LOG = Logger.getLogger(UserFilter.class.getName());

    @Resource(name = "userFilterCache")
    private LoadingCache<String, User> cache;

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {

        try {
            Cookie cookie = CookieHelper.getCookie((HttpServletRequest) req, LoginCookie.NAME);
            // get user id
            if (cookie != null) {
                try {
                    String cookieValue = cookie.getValue();
                    User user = cache.get(cookieValue);
                    ThreadScope.setUser(user);
                } catch (Throwable e) {
                    LOG.warning("cache loader threw exception: " + e.getMessage());
                    CookieHelper.removeCookie((HttpServletResponse) res, LoginCookie.NAME);
                }
            }
            filterChain.doFilter(req, res);
        } finally {
            ThreadScope.clearUser();
        }

    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}
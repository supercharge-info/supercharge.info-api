package com.redshiftsoft.tesla.web.filter;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Sets cache related HTTP headers on response items.
 */
@Component
public class CacheControlFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) res;
        response.setHeader("Cache-Control", "private, max-age=0, no-cache");
        response.setDateHeader("Expires", 0L);
        filterChain.doFilter(req, res);
    }

    @Override
    public void init(final FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}

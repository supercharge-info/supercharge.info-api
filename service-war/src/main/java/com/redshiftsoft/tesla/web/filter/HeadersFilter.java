package com.redshiftsoft.tesla.web.filter;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Sets various other headers on response items.
 */
@Component
public class HeadersFilter implements Filter {

    @Resource
    private DBInfoDAO dbInfoDAO;

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) res;
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.addDateHeader("Last-Modified", dbInfoDAO.getLastModifiedCached());

        filterChain.doFilter(req, res);
    }

    @Override
    public void init(final FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }


}

package com.redshiftsoft.tesla.web.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;

public class WebServletConfiguration implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext ctx) {

        //
        // spring context initialization
        //
        AnnotationConfigWebApplicationContext webCtx = new AnnotationConfigWebApplicationContext();
        webCtx.register(WebConfiguration.class);
        webCtx.setServletContext(ctx);

        //
        // dispatcher servlet
        //
        ServletRegistration.Dynamic servlet = ctx.addServlet("supercharge", new DispatcherServlet(webCtx));
        servlet.addMapping("/supercharge/*");
        servlet.setLoadOnStartup(1);


        //
        // filter: userFilter
        //
        FilterRegistration.Dynamic userFilter = ctx.addFilter("userFilter", "org.springframework.web.filter.DelegatingFilterProxy");
        userFilter.addMappingForUrlPatterns(null, false, "*");
        userFilter.setInitParameter("targetBeanName", "userFilter");

        //
        // filter: headersFilter
        //
        FilterRegistration.Dynamic headersFilter = ctx.addFilter("headersFilter", "org.springframework.web.filter.DelegatingFilterProxy");
        headersFilter.addMappingForUrlPatterns(null, false, "*");
        headersFilter.setInitParameter("targetBeanName", "headersFilter");

        //
        // filter: cacheControlFilter
        //
        FilterRegistration.Dynamic cacheControlFilter = ctx.addFilter("cacheControlFilter", "org.springframework.web.filter.DelegatingFilterProxy");
        cacheControlFilter.addMappingForUrlPatterns(null, false, "*");
        cacheControlFilter.setInitParameter("targetBeanName", "cacheControlFilter");


        // 30 minutes is the default in tomcat's default web.xml.  Ideally we would disable sessions and JSESSIONID
        // id cookies entirely.  Sessions are NOT currently used in the service web app. -->
        ctx.setSessionTimeout(10);
        ctx.setResponseCharacterEncoding("UTF-8");
        ctx.setRequestCharacterEncoding("UTF-8");

        // Don't really use the session cookie, but might as well prevent javascript form accessing it.
        ctx.getSessionCookieConfig().setSecure(true);
    }


}

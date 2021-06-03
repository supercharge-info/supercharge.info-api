package com.redshiftsoft.tesla.web.config;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.redshiftsoft.mail.MailAuthentication;
import com.redshiftsoft.mail.MailClientConfig;
import com.redshiftsoft.mail.MailSender;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.filter.UserFilterCacheLoader;
import com.redshiftsoft.tesla_web_scrape.TeslaWebClientConfiguration;
import kdw.common.secure.passwordhashing.PasswordHashLogic;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, order = 1)
@EnableWebMvc
@Import({DAOConfiguration.class, TeslaWebClientConfiguration.class})
@ComponentScan(basePackages = {"com.redshiftsoft.tesla.web"})
public class WebConfiguration implements WebMvcConfigurer {

    @Bean
    public Cache<String, User> userFilterCache(UserDAO userDAO) {
        return CacheBuilder.from("initialCapacity=64,maximumSize=500,expireAfterAccess=20m,concurrencyLevel=4,recordStats").
                build(new UserFilterCacheLoader(userDAO));
    }

    @Bean
    public PasswordHashLogic loginPasswordHashLogic() {
        return new kdw.common.secure.passwordhashing.PasswordHashLogic();
    }

    @Bean
    public MailSender mailSender(
            @Value("${smtp.user}") String smtpUser,
            @Value("${smtp.password}") String smtpPassword,
            @Value("${smtp.host}") String smtpHost,
            @Value("${smtp.port}") String smtpPort) {
        MailAuthentication ma = new MailAuthentication(smtpUser, smtpPassword);
        MailClientConfig config = new MailClientConfig(smtpHost, Integer.parseInt(smtpPort.trim()), "smtp", ma);
        config.setStartTLSEnabled(true);
        config.setStartTLSRequired(true);
        return new MailSender(config);
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public DefaultMethodSecurityExpressionHandler bean() {
        DefaultMethodSecurityExpressionHandler h = new DefaultMethodSecurityExpressionHandler();
        // Spring expects role names to start with "ROLE_" by default.
        h.setDefaultRolePrefix("");
        return h;
    }
}

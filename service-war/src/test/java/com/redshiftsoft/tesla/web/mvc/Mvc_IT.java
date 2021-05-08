package com.redshiftsoft.tesla.web.mvc;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.config.WebConfiguration;
import com.redshiftsoft.tesla.web.filter.Security;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

@Transactional
@SpringJUnitWebConfig(classes = {WebConfiguration.class})
public class Mvc_IT {

    protected static MockMvc mockMvc;

    @Resource
    protected UserDAO userDAO;

    @Resource
    protected TestSiteSaver testSiteSaver;

    protected ObjectMapper objectMapper = new ObjectMapper();

    @BeforeAll
    public static void setup(WebApplicationContext wac) {
        mockMvc = MockMvcBuilders
                .webAppContextSetup(wac)
                .build();

        Security.setAnonymousAuth();
    }

    @BeforeEach
    public void tearDown() {
        // By default anonymous user by default, override in individual tests where needed.
        Security.setAnonymousAuth();
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public User testUser() {
        return testUserWithRoles(Collections.emptyList());
    }

    public User testUserWithRoles(List<String> roles) {
        User user = TestUsers.createUser();
        user.setRoles(roles);
        userDAO.insert(user);
        return user;
    }

    public Site testSite() {
        return testSiteSaver.persistRandomSite();
    }


}

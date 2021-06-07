package com.redshiftsoft.tesla.web.mvc.system;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Test;

import java.util.Collections;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

;

public class SystemController_IT extends Mvc_IT {

    @Test
    public void system_properties_authentication_required() throws Exception {
        // given -- no login
        // when
        mockMvc.perform(get("/system/properties")).andExpect(status().isForbidden());
    }

    @Test
    public void system_properties_admin_required() throws Exception {
        // given -- no login, no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/system/properties")).andExpect(status().isForbidden());
    }

    @Test
    public void system_properties() throws Exception {
        // given -- no login, no roles
        User user1 = testUserWithRoles(Collections.singletonList("admin"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/system/properties")).andExpect(status().isOk());
    }


}
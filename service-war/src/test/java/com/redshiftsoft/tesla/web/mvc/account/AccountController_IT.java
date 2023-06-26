package com.redshiftsoft.tesla.web.mvc.account;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Test;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class AccountController_IT extends Mvc_IT {

    @Test
    public void account_stats_authentication_required() throws Exception {
        // given -- no login
        // when
        mockMvc.perform(get("/account/stats")).andExpect(status().isForbidden());
    }

    @Test
    public void account_stats_no_roles() throws Exception {
        // given -- no login, no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/account/stats")).andExpect(status().isOk())
            .andExpect(jsonPath("$.edits").doesNotHaveJsonPath())
            .andExpect(jsonPath("$.additions").doesNotHaveJsonPath());
    }

    @Test
    public void account_edits_admin_required() throws Exception {
        // given -- no login, no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/account/edits")).andExpect(status().isForbidden());
    }


}

package com.redshiftsoft.tesla.web.mvc.user;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Test;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class PasswordController_IT extends Mvc_IT {

    @Test
    public void change_requires_authentication() throws Exception {
        // then -- BAD_REQUEST -- unauthenticated
        mockMvc.perform(post("/password/change?password=some_new_passowrd"))
                .andExpect(status().isForbidden())
                .andExpect(content().contentType("application/json"));
    }

    @Test
    public void change() throws Exception {
        // given
        User user = testUser();
        Security.setAuth(user);

        // then -- BAD_REQUEST -- too short
        mockMvc.perform(post("/password/change?password=short"))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType("application/json"));

        // then -- BAD_REQUEST -- too short
        mockMvc.perform(post("/password/change?password="))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType("application/json"));

        // then -- BAD_REQUEST -- cannot contain username
        mockMvc.perform(post("/password/change?password=XXX" + user.getUsername() + "XXX"))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType("application/json"));

        // then -- BAD_REQUEST -- must be post
        mockMvc.perform(get("/password/change?password=new_password"))
                .andExpect(status().isMethodNotAllowed());

        // then -- GOOD
        mockMvc.perform(post("/password/change?password=new_password"))
                .andExpect(status().isOk())
                .andExpect(content().contentType("application/json"))
                .andExpect(jsonPath("$.result").value("SUCCESS"));

    }

    @Test
    public void reset_returns_bad_request_for_non_existing_username() throws Exception {
        mockMvc.perform(get("/password/reset?username=thisIsANonExistingUsername"))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType("application/json"));
    }

    @Test
    public void reset_returns_bad_request_for_non_existing_email() throws Exception {
        mockMvc.perform(get("/password/reset?email=thisIsANonExistingEmail"))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType("application/json"));
    }

}

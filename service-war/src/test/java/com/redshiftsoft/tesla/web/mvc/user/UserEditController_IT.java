package com.redshiftsoft.tesla.web.mvc.user;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

;

public class UserEditController_IT extends Mvc_IT {

    @Test
    public void authentication_required() throws Exception {
        // given -- no login

        // when
        mockMvc.perform(post("/user/edit").content("{}").contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isForbidden());
    }

    @Test
    public void edit() throws Exception {
        // given -- user
        User user = testUser();
        Security.setAuth(user);
        // given -- user
        UserEditDTO userEditDTO = new UserEditDTO();
        userEditDTO.setDescription("new");
        userEditDTO.setEmail("new@new.com");

        // when
        mockMvc.perform(post("/user/edit").content(objectMapper.writeValueAsString(userEditDTO)).contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());

        // then
        User userOut = userDAO.getById(user.getId());
        Assertions.assertEquals(userEditDTO.getEmail(), userOut.getEmail());
        Assertions.assertEquals(userEditDTO.getDescription(), userOut.getDescription());
        Assertions.assertFalse(user.isEmailVerified());
    }


}
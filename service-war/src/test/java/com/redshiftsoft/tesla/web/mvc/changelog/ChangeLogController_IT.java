package com.redshiftsoft.tesla.web.mvc.changelog;

import com.redshiftsoft.tesla.dao.changelog.ChangeLogEdit;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.Collections;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class ChangeLogController_IT extends Mvc_IT {

    private ChangeLogEdit testChange;

    @BeforeEach
    public void insertTestChange() {
        testChange = testChange();
    }

    @Test
    public void change_delete_no_login() throws Exception {
        // when
        mockMvc.perform(post("/changes/delete?changeId=" + testChange.getId())).andExpect(status().isForbidden());
    }

    @Test
    public void change_delete_no_roles() throws Exception {
        // given -- no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(post("/changes/delete?changeId=" + testChange.getId())).andExpect(status().isForbidden());
    }

    @Test
    public void change_delete_wrong_roles() throws Exception {
        // given -- wrong roles
        User user1 = testUserWithRoles(Collections.singletonList("feature"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(post("/changes/delete?changeId=" + testChange.getId())).andExpect(status().isForbidden());
    }

    @Test
    public void change_delete_get() throws Exception {
        // given
        User user1 = testUserWithRoles(Collections.singletonList("editor"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/changes/delete?changeId=" + testChange.getId())).andExpect(status().isMethodNotAllowed());
    }

    @Test
    public void change_delete() throws Exception {
        // given
        User user1 = testUserWithRoles(Collections.singletonList("editor"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(post("/changes/delete?changeId=" + testChange.getId())).andExpect(status().isOk());
    }

}

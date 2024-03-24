package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;

import javax.annotation.Resource;
import java.util.Collections;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


public class SiteEditController_IT extends Mvc_IT {

    @Resource
    private SiteDAO siteDAO;

    @Test
    public void delete_requires_admin_role() throws Exception {

        // when no login
        mockMvc.perform(post("/siteadmin/delete?siteId=100"))
                .andExpect(status().isForbidden());


        // when login
        User user1 = testUser();
        Security.setAuth(user1);
        mockMvc.perform(post("/siteadmin/delete?siteId=100"))
                .andExpect(status().isForbidden());


        User user2 = testUserWithRoles(Collections.singletonList("admin"));
        Security.setAuth(user2);
        Site site = testSite();

        // when wrong method
        mockMvc.perform(get("/siteadmin/delete?siteId=" + site.getId()))
                .andExpect(status().isMethodNotAllowed());

        // when admin
        mockMvc.perform(post("/siteadmin/delete?siteId=" + site.getId()))
                .andExpect(status().isOk());


        Assertions.assertFalse(siteDAO.exists(site.getId()));
    }

    @Test
    public void edit_requires_editor_role() throws Exception {

        // when no login
        mockMvc.perform(post("/siteadmin/edit")
                .content("{}")
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());


        // when login no roles
        User user1 = testUser();
        Security.setAuth(user1);
        mockMvc.perform(post("/siteadmin/edit")
                .content("{}")
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());


        // when login, wrong roles
        User user2 = testUserWithRoles(Collections.singletonList("feature"));
        Security.setAuth(user2);
        mockMvc.perform(post("/siteadmin/edit")
                .content("{}")
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());


        // when admin
        User user3 = testUserWithRoles(Collections.singletonList("editor"));
        Security.setAuth(user3);
        Site site = testSite();

        // DTO
        SiteEditDTO request = new SiteEditDTO();
        request.setId(site.getId());
        request.setName("new-name");
        request.setStatus(SiteStatus.PERMIT);
        request.setDateModified(null);
        request.setStallCount(42);

        // wrong method
        mockMvc.perform(get("/siteadmin/edit")
                .content(objectMapper.writeValueAsString(request))
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isMethodNotAllowed());

        // when
        String response =
                mockMvc.perform(post("/siteadmin/edit")
                        .content(objectMapper.writeValueAsString(request))
                        .contentType(MediaType.APPLICATION_JSON)
                ).andExpect(status().isOk())
                .andReturn().getResponse().getContentAsString();


        // then
        Assertions.assertEquals("{" +
                "\"result\":\"FAIL\",\"messages\":[" +
                        "\"gps is required\",\"elevation is required\"," + 
                        "\"stall count must equal total of individual stall type counts\"," +
                        "\"stall count must equal total of individual plug type counts (unless any stalls are multi-plug)\"," +
                        "\"street is required\",\"city is required\",\"country is required\"" +
                "]}", response);
    }

}

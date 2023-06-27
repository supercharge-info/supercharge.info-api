package com.redshiftsoft.tesla.web.mvc.feature;

import com.redshiftsoft.tesla.dao.feature.Feature;
import com.redshiftsoft.tesla.dao.feature.FeatureDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;

import javax.annotation.Resource;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;
import java.util.Collections;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class FeatureController_IT extends Mvc_IT {

    @Resource
    private FeatureDAO featureDAO;

    @Test
    public void feature_delete_no_login() throws Exception {
        // given -- no login
        // when
        mockMvc.perform(get("/feature/delete/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_delete_no_role() throws Exception {
        // given -- no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/feature/delete/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_delete_wrong_role() throws Exception {
        // given -- wrong roles
        User user1 = testUserWithRoles(Collections.singletonList("feature"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/feature/delete/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_delete() throws Exception {
        // given
        User user1 = testUserWithRoles(Collections.singletonList("admin"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/feature/delete/100")).andExpect(status().isOk());
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Test
    public void feature_load_no_login() throws Exception {
        // given -- no login
        // when
        mockMvc.perform(get("/feature/load/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_load_no_role() throws Exception {
        // given -- no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/feature/load/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_load_wrong_role() throws Exception {
        // given -- editor roles
        User user1 = testUserWithRoles(Collections.singletonList("editor"));
        Security.setAuth(user1);

        // when
        mockMvc.perform(get("/feature/load/100")).andExpect(status().isForbidden());
    }

    @Test
    public void feature_load() throws Exception {
        // given
        User user1 = testUserWithRoles(Collections.singletonList("feature"));
        Security.setAuth(user1);
        Feature feature = new Feature();
        feature.setTitle("title");
        feature.setDescription("desc");
        feature.setAddedDate(LocalDate.now());
        featureDAO.insert(feature);

        // when
        mockMvc.perform(get("/feature/load/" + feature.getId())).andExpect(status().isOk())
            .andExpect(jsonPath("$.id").isNumber()).andExpect(jsonPath("$.title").isNotEmpty())
            .andExpect(jsonPath("$.addedDate").value(LocalDate.now().format(DateTimeFormatter.ISO_LOCAL_DATE)))
            .andExpect(jsonPath("$.description").isNotEmpty());
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Test
    public void feature_edit_no_login() throws Exception {
        // given -- no login
        // when
        mockMvc.perform(post("/feature/edit")
                .content("{}}")
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());
    }

    @Test
    public void feature_edit_no_role() throws Exception {
        // given -- login, no roles
        User user1 = testUser();
        Security.setAuth(user1);

        // when
        mockMvc.perform(post("/feature/edit")
                .content("{}}")
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());
    }

    @Test
    public void feature_edit_wrong_role() throws Exception {
        // given -- login, wrong roles
        User user1 = testUserWithRoles(Collections.singletonList("editor"));
        Security.setAuth(user1);
        FeatureDTO featureDTO = new FeatureDTO();
        featureDTO.setId(100);

        // when
        mockMvc.perform(post("/feature/edit")
                .content(objectMapper.writeValueAsString(featureDTO))
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isForbidden());
    }

    @Test
    public void feature_edit() throws Exception {
        // given
        User user1 = testUserWithRoles(Collections.singletonList("feature"));
        Security.setAuth(user1);
        Feature feature = new Feature();
        feature.setTitle("title");
        feature.setDescription("desc");
        feature.setAddedDate(LocalDate.now());
        featureDAO.insert(feature);

        // DTO
        FeatureDTO featureDTO = new FeatureDTO();
        featureDTO.setId(feature.getId());
        featureDTO.setTitle(feature.getTitle());
        featureDTO.setDescription(feature.getDescription());
        featureDTO.setAddedDate(feature.getAddedDate());

        // when get request
        mockMvc.perform(get("/feature/edit")
                .content(objectMapper.writeValueAsString(featureDTO))
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isMethodNotAllowed());

        // when
        mockMvc.perform(post("/feature/edit")
                .content(objectMapper.writeValueAsString(featureDTO))
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isOk()).andExpect(jsonPath("$.result").value("SUCCESS"))
        .andExpect(jsonPath("$.featureId").isNumber());
    }


}

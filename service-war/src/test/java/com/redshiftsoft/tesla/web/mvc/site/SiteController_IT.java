package com.redshiftsoft.tesla.web.mvc.site;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpServletResponse;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class SiteController_IT extends Mvc_IT {

    @Test
    public void discuss_should_redirect() throws Exception {
        // given
        Site site = testSite();

        // when
        MockHttpServletResponse response =
                mockMvc.perform(get("/discuss?siteId=" + site.getId()).accept(MediaType.APPLICATION_JSON))
                        .andExpect(status().isFound())
                        .andReturn().getResponse();

        // then
        Assertions.assertEquals(site.getUrlDiscuss(), response.getHeader("Location"));
    }

    @Test
    public void discuss_should_return_not_found_for_bad_site_id() throws Exception {
        // when
        mockMvc.perform(get("/discuss?siteId=987654321").accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andReturn().getResponse();

    }

}
package com.redshiftsoft.tesla.web.mvc.version;

import com.redshiftsoft.tesla.web.mvc.Mvc_IT;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class VersionController_IT extends Mvc_IT {

    @Test
    public void version() throws Exception {

        // when
        String responseJson =
                mockMvc.perform(get("/version/number").accept(MediaType.APPLICATION_JSON))
                        .andExpect(status().isOk())
                        .andExpect(content().contentType("application/json"))
                        .andReturn().getResponse().getContentAsString();

        // then
        Assertions.assertTrue(responseJson.matches("\\d\\.\\d\\.\\d.*"));
    }

    @Test
    public void timestamp() throws Exception {

        // when
        String responseJson =
                mockMvc.perform(get("/version/timestamp").accept(MediaType.APPLICATION_JSON))
                        .andExpect(status().isOk())
                        .andExpect(content().contentType("application/json"))
                        .andReturn().getResponse().getContentAsString();

        // then
        Assertions.assertTrue(responseJson.matches("\\d{4}-\\d{2}-\\d{2}.*"));
    }


}

package com.redshiftsoft.tesla_web_scrape.http;

import com.redshiftsoft.tesla_web_scrape.TeslaWebClientConfiguration;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = TeslaWebClientConfiguration.class)
public class WebClient_UT {

    @Resource
    private WebClient webClient;

    @Test
    public void getGetAllJson() {
        String json = webClient.getAllJson(WebClient.TESLA_JSON_URL);
        assertNotNull(json);

        json = webClient.getAllJson(WebClient.CUA_TESLA_JSON_URL);
        assertNotNull(json);
    }

    @Test
    public void testDeserialization() throws IOException {
        WebScrapeResult webLocations = webClient.getWebLocations();
        assertTrue(webLocations.getTeslaSites().size() > 100);
    }

}

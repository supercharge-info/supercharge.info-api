package com.redshiftsoft.tesla_web_scrape.http;

import com.redshiftsoft.tesla_web_scrape.TeslaWebClientConfiguration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.io.IOException;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TeslaWebClientConfiguration.class)
public class WebClient_UT {

    @Resource
    private WebClient webClient;

    @Test
    public void getGetAllJson() {
        String json = webClient.getAllJson();
        assertNotNull(json);
    }

    @Test
    public void testDeserialization() throws IOException {
        WebScrapeResult webLocations = webClient.getWebLocations();
        assertTrue(webLocations.getTeslaSites().size() > 100);
    }

}

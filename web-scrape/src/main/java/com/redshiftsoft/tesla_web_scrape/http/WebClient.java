package com.redshiftsoft.tesla_web_scrape.http;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.redshiftsoft.tesla_web_scrape.model.LocationType;
import com.redshiftsoft.tesla_web_scrape.model.LocationTypePredicate;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.stream.Collectors;

public class WebClient {

    private static final String TESLA_JSON_URL = "https://www.tesla.com/all-locations?type=supercharger";

    private final ObjectMapper objectMapper = new ObjectMapper();

    private final CloseableHttpClient httpClient = HttpClientBuilder
            .create()
            .setMaxConnPerRoute(4)
            .setMaxConnTotal(4)
            .build();

    /**
     * Returns the RAW json, before we attempt to parse it.
     */
    public String getAllJson() {
        HttpGet httpGet = new HttpGet(TESLA_JSON_URL);
        try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
            HttpEntity responseEntity = response.getEntity();
            return EntityUtils.toString(responseEntity, StandardCharsets.UTF_8);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Just gets list of data from Tesla site as TeslaSite objects.
     */
    public WebScrapeResult getWebLocations() throws IOException {
        String json = getAllJson();
        List<TeslaSite> allTeslaSites = objectMapper.readValue(json, new TypeReference<>() {
        });

        List<TeslaSite> teslaSiteList = allTeslaSites.stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .filter(s -> s.isOpenSoon() == 0)
                .filter(new TeslaSiteDuplicatePredicate())
                .collect(Collectors.toList());

        return new WebScrapeResult(json, teslaSiteList);
    }

}
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
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;
import java.util.stream.Collectors;

@Component
public class WebClient {

    public static final String TESLA_JSON_URL = "https://www.tesla.com/all-locations?type=supercharger";

    public static final String CN_TESLA_JSON_URL = "https://www.tesla.cn/all-locations?type=supercharger";

    public static final String CUA_TESLA_JSON_URL = "https://www.tesla.com/cua-api/tesla-locations?translate=en_US&usetrt=true";

    private final ObjectMapper objectMapper = new ObjectMapper();

    private final CloseableHttpClient httpClient = HttpClientBuilder
            .create()
            .setMaxConnPerRoute(4)
            .setMaxConnTotal(4)
            .build();

    /**
     * Returns the RAW json, before we attempt to parse it.
     */
    public String getAllJson(String url) {
        HttpGet httpGet = new HttpGet(url);
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
        String json = getAllJson(TESLA_JSON_URL);
        List<TeslaSite> allTeslaSites = objectMapper.readValue(json, new TypeReference<>() { });

        json = getAllJson(CUA_TESLA_JSON_URL);
        List<TeslaSite> newTeslaSites = objectMapper.readValue(json, new TypeReference<>() { });

        json = getAllJson(CN_TESLA_JSON_URL);
        List<TeslaSite> cnTeslaSites = objectMapper.readValue(json, new TypeReference<>() { });

        Map<String, TeslaSite> mappedSites = newTeslaSites.stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .collect(Collectors.toMap(s -> s.getLocationId().toLowerCase(), s -> s));

        Map<String, TeslaSite> cnSites = cnTeslaSites.stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .map(s -> {
                    s.setCountry("China Mainland");
                    return s;
                })
                .collect(Collectors.toMap(s -> s.getLocationId().toLowerCase(), s -> s));

        List<TeslaSite> mergedSiteList = allTeslaSites.stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .map(s -> {
                    TeslaSite upd = null;
                    if (cnSites.containsKey(s.getLocationId().toLowerCase())) {
                        upd = cnSites.remove(s.getLocationId().toLowerCase());
                        if (s.getCountry() == "China Mainland") {
                            return upd;
                        }
                    } else {
                        if (mappedSites.containsKey(s.getTrtId())) {
                            upd = mappedSites.get(s.getTrtId());
                        } else if (mappedSites.containsKey(s.getLocationId().toLowerCase())) {
                            upd = mappedSites.get(s.getLocationId().toLowerCase());
                        }

                        if (upd != null) {
                            // Replace props with up-to-date ones
                            s.getLocationTypes().clear();
                            s.getLocationTypes().addAll(upd.getLocationTypes());

                            s.setOpenSoon(upd.getOpenSoon());
                            s.setLatitude(upd.getLatitude());
                            s.setLongitude(upd.getLongitude());
                        }
                    }
                    return s;
                }).collect(Collectors.toList());
        List<TeslaSite> teslaSiteList = Stream.concat(mergedSiteList.stream(), cnSites.values().stream())
                .filter(s -> s.isOpenSoon() == 0)
                .filter(new TeslaSiteDuplicatePredicate())
                .sorted((a, b) -> a.getTitle().compareTo(b.getTitle()))
                .collect(Collectors.toList());

        return new WebScrapeResult(json, teslaSiteList);
    }

}

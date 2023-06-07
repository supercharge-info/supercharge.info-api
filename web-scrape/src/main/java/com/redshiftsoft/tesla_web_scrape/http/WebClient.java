package com.redshiftsoft.tesla_web_scrape.http;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.redshiftsoft.tesla_web_scrape.model.LocationType;
import com.redshiftsoft.tesla_web_scrape.model.LocationTypePredicate;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.URI;
import java.time.Duration;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Semaphore;
import java.util.function.Function;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;
import java.util.stream.Collectors;

@Component
public class WebClient {

    public static final String TESLA_JSON_URL = "https://www.tesla.com/all-locations?type=supercharger";

    public static final String CN_TESLA_JSON_URL = "https://www.tesla.cn/all-locations?type=supercharger";

    public static final String CUA_TESLA_JSON_URL = "https://www.tesla.com/cua-api/tesla-locations?translate=en_US&usetrt=true";

    private final ObjectMapper objectMapper = new ObjectMapper();

    private final Semaphore requestLimiter = new Semaphore(10, true);
    private final HttpClient httpClient = HttpClient.newBuilder().connectTimeout(Duration.ofSeconds(20)).build();
        

    /**
     * Returns the RAW json, before we attempt to parse it.
     */
    public String getAllJson(String url) {
        try {
            requestLimiter.acquire();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        HttpRequest httpGet = HttpRequest.newBuilder()
            .timeout(Duration.ofSeconds(30))
            .GET().uri(URI.create(url)).build();

        try {
            HttpResponse<String> response = httpClient.send(httpGet, HttpResponse.BodyHandlers.ofString());
            return response.body();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            requestLimiter.release();
        }
    }

    /**
     * Returns a future that will contain the RAW json, before we attempt to parse it.
     */
    public CompletableFuture<String> getAllJsonAsync(String url) {
        try {
            requestLimiter.acquire();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        HttpRequest httpGet = HttpRequest.newBuilder()
            .timeout(Duration.ofSeconds(30))
            .GET().uri(URI.create(url)).build();

        CompletableFuture<HttpResponse<String>> response = httpClient.sendAsync(httpGet, HttpResponse.BodyHandlers.ofString());
        return response.thenApply(r -> {
            requestLimiter.release();
            return r.body();
        });
    }

    /**
     * Performs a number of downloads asynchronously that will either return an array of lists of TeslaSites or throw an exception
     */
    public List<TeslaSite>[] getEachSource(String... urls) {
        CompletableFuture<List<TeslaSite>>[] futures = Arrays.stream(urls).map(u -> getAllJsonAsync(u).thenApply(json -> {
            try {
                return objectMapper.readValue(json, new TypeReference<List<TeslaSite>>() { });
            } catch (JsonProcessingException e) {
                throw new IllegalStateException(e);
            }
        })).toArray(CompletableFuture[]::new);

        // Waits for all downloads to complete, or throws an exception if one fails
        CompletableFuture.allOf(futures).join();
        return Arrays.stream(futures).map(CompletableFuture::join).toArray(ArrayList[]::new);
    }

    /**
     * Just gets list of non-China data from Tesla site as TeslaSite objects.
     */
    public WebScrapeResult getWebLocations() throws IOException {
        List<TeslaSite>[] downloads = getEachSource(TESLA_JSON_URL, CUA_TESLA_JSON_URL);

        Map<String, TeslaSite> mappedSites = downloads[1].stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .collect(Collectors.toMap(s -> s.getLocationId().toLowerCase(), Function.identity()));

        List<TeslaSite> teslaSiteList = downloads[0].stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .map(site -> {
                    TeslaSite upd = null;
                    if (mappedSites.containsKey(site.getTrtId())) {
                        upd = mappedSites.get(site.getTrtId());
                    } else if (mappedSites.containsKey(site.getLocationId().toLowerCase())) {
                        upd = mappedSites.get(site.getLocationId().toLowerCase());
                    }

                    if (upd != null) {
                        // Replace props with up-to-date ones
                        site.setLocationId(upd.getLocationId());
                        site.setOpenSoon(upd.getOpenSoon());
                        site.setLatitude(upd.getLatitude());
                        site.setLongitude(upd.getLongitude());

                        site.getLocationTypes().clear();
                        site.getLocationTypes().addAll(upd.getLocationTypes());
                    }
                    return site;
                })
                .filter(s -> s.isOpenSoon() == 0 && !"China Mainland".equals(s.getCountry()))
                .filter(new TeslaSiteDuplicatePredicate())
                .sorted((a, b) -> a.getTitle().compareTo(b.getTitle()))
                .collect(Collectors.toList());

        return new WebScrapeResult(objectMapper.writeValueAsString(teslaSiteList), teslaSiteList);
    }

    /**
     * Just gets list of China data from tesla.cn as TeslaSite objects.
     * Useful because connections and transfer speeds to China are very slow.
     */
    public WebScrapeResult getChinaLocations() throws IOException {
        List<TeslaSite>[] downloads = getEachSource(TESLA_JSON_URL, CUA_TESLA_JSON_URL, CN_TESLA_JSON_URL);

        // Get non-China data to exclude already downloaded sites in HK, TW, etc
        Map<String, TeslaSite> mappedSites = downloads[1].stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .collect(Collectors.toMap(s -> s.getLocationId().toLowerCase(), Function.identity()));

        TeslaSiteDuplicatePredicate worldDuplicates = new TeslaSiteDuplicatePredicate();
        Set<String> processed = downloads[0].stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .map(site -> {
                    TeslaSite upd = null;
                    if (mappedSites.containsKey(site.getTrtId())) {
                        upd = mappedSites.get(site.getTrtId());
                    } else if (mappedSites.containsKey(site.getLocationId().toLowerCase())) {
                        upd = mappedSites.get(site.getLocationId().toLowerCase());
                    }

                    if (upd != null) {
                        // Replace props with up-to-date ones
                        site.setLocationId(upd.getLocationId());
                        site.setOpenSoon(upd.getOpenSoon());
                        site.setLatitude(upd.getLatitude());
                        site.setLongitude(upd.getLongitude());

                        site.getLocationTypes().clear();
                        site.getLocationTypes().addAll(upd.getLocationTypes());
                    }
                    return site;
                })
                .filter(s -> s.isOpenSoon() == 0 && !"China Mainland".equals(s.getCountry()))
                .filter(worldDuplicates)
                .map(s -> s.getLocationId().toLowerCase())
                .collect(Collectors.toSet());

        List<TeslaSite> chinaSiteList = downloads[2].stream()
                .filter(new LocationTypePredicate(LocationType.SUPERCHARGER))
                .filter(s -> s.isOpenSoon() == 0 && !processed.contains(s.getLocationId().toLowerCase()))
                .filter(worldDuplicates)
                .sorted((a, b) -> a.getTitle().compareTo(b.getTitle()))
                .collect(Collectors.toList());

        return new WebScrapeResult(objectMapper.writeValueAsString(chinaSiteList), chinaSiteList);
    }

}

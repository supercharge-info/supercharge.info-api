package com.redshiftsoft.tesla.web.forum;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.redshiftsoft.tesla.web.scheduled.CacheStatsLogger;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import java.util.Optional;
import java.util.logging.Logger;

@Component
public class ForumClient {

    private static final Logger LOG = Logger.getLogger(CacheStatsLogger.class.getName());

    private static final String API_KEY = "643e720e20dc839737627db1b5df2e06c0f079d43672e230d98882857c0454dd";
    private static final String API_USER = "keith";

    private static final String BASE_URL = "https://forum.supercharge.info";

    private final ObjectMapper objectMapper = new ObjectMapper();

    private final CloseableHttpClient httpClient = HttpClientBuilder
            .create()
            .setMaxConnPerRoute(16)
            .setMaxConnTotal(16)
            .setDefaultRequestConfig(RequestConfig.custom()
                    .setSocketTimeout(15_000)
                    .setConnectTimeout(15_000)
                    .setConnectionRequestTimeout(15_000).build())
            .build();


    public int logout(Integer userId) {

        Optional<ForumUser> userOption = search(userId);
        if (userOption.isEmpty()) {
            return -1;
        }

        String url = "{BASE_URL}/admin/users/{USER_ID}/log_out"
                .replace("{BASE_URL}", BASE_URL)
                .replace("{USER_ID}", String.valueOf(userOption.get().id));

        LOG.info("url=" + url);

        HttpPost httpPost = new HttpPost(url);
        httpPost.addHeader("Api-Key",API_KEY);
        httpPost.addHeader("Api-Username",API_USER);

        try (CloseableHttpResponse response = httpClient.execute(httpPost)) {
            return response.getStatusLine().getStatusCode();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    /**
     * We uses our userId as the forum "external-id". Search by this.
     */
    public Optional<ForumUser> search(Integer userId) {
        String url = "{BASE_URL}/users/by-external/{EXTERNAL_ID}.json"
                .replace("{BASE_URL}", BASE_URL)
                .replace("{EXTERNAL_ID}", userId.toString());

        HttpGet httpGet = new HttpGet(url);
        LOG.info("url=" + url);

        try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
            String json = EntityUtils.toString(response.getEntity());
            ForumUserWrapper userWrapper = objectMapper.readValue(json, ForumUserWrapper.class);
            return Optional.ofNullable(userWrapper.user);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}

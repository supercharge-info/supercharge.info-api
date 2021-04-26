package productiontests;

import com.redshiftsoft.lib.http.Response;
import com.redshiftsoft.lib.http.SimpleClient;
import org.junit.Test;

import java.time.Instant;
import java.time.ZonedDateTime;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;

public class HttpCacheAndOtherHeaders_IT {

    private static final SimpleClient simpleClient = SimpleClient.make();

    @Test
    public void indexHtml() {
        List<Response> myResponses = Arrays.asList(
                simpleClient.get("https://supercharge.info/"),
                simpleClient.get("https://supercharge.info/index.html")
        );

        Instant nowPlusSixMinutes = ZonedDateTime.now().plusMinutes(6).toInstant();
        for (Response r : myResponses) {
            assertTrue(r.expires.isBefore(nowPlusSixMinutes));
            assertTrue(r.cacheControlMaxAge.isBefore(nowPlusSixMinutes));
            assertFalse(r.cacheControlNoCache);
            assertFalse(r.cacheControlPrivate);
            assertEquals("text/html; charset=utf-8", r.contentType);
        }
    }

    @Test
    public void favIcon() {
        List<Response> myResponses = Collections.singletonList(
                simpleClient.get("https://supercharge.info/favicon.ico")
        );
        Instant nowPlusSixMinutes = ZonedDateTime.now().plusMinutes(6).toInstant();
        for (Response r : myResponses) {
            assertTrue(r.expires.isBefore(nowPlusSixMinutes));
            assertTrue(r.cacheControlMaxAge.isBefore(nowPlusSixMinutes));
            assertEquals("image/vnd.microsoft.icon", r.contentType);
        }
    }

    /**
     * Services headers are set in tomcat, but pass through apache.
     */
    @Test
    public void services() {
        List<Response> responses = Arrays.asList(
                simpleClient.get("https://supercharge.info/service/supercharge/allSites"),
                simpleClient.get("https://supercharge.info/service/supercharge/allChanges"),
                simpleClient.get("https://supercharge.info/service/supercharge/country"),
                simpleClient.get("https://supercharge.info/service/supercharge/region"),
                simpleClient.get("https://supercharge.info/service/supercharge/databaseInfo")
        );

        Instant nowPlusOneMinute = ZonedDateTime.now().plusMinutes(1).toInstant();

        for (Response r : responses) {
            assertTrue(r.expires.isBefore(nowPlusOneMinute));
            assertTrue(r.cacheControlMaxAge.isBefore(nowPlusOneMinute));
            assertTrue(r.cacheControlNoCache);
            assertTrue(r.cacheControlPrivate);
            assertEquals("application/json;charset=UTF-8", r.contentType);
            assertEquals("*", r.accessControlAllowOrigin);
        }
    }
}
package productiontests;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import java.io.IOException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class HttpsRedirect_IT {

    private static final String URL_HTTP = "http://supercharge.info/";
    private static final String URL_HTTPS = "https://supercharge.info/";

    HttpClient notRedirectClient = HttpClientBuilder
            .create()
            .disableAutomaticRetries()
            .disableRedirectHandling()
            .build();

    HttpClient redirectClient = HttpClientBuilder
            .create()
            .disableAutomaticRetries()
            .build();


    @Test
    public void testRedirectToHttps() throws IOException {
        HttpGet httpGet = new HttpGet(URL_HTTP);
        HttpResponse response = notRedirectClient.execute(httpGet);
        StatusLine statusLine = response.getStatusLine();
        assertEquals(301, statusLine.getStatusCode());
        assertEquals("Moved Permanently", statusLine.getReasonPhrase());
        assertEquals("HTTP/1.1", statusLine.getProtocolVersion().toString());

        Header[] locations = response.getHeaders("Location");
        assertEquals(1, locations.length);
        assertEquals(URL_HTTPS, locations[0].getValue());
    }

    @Test
    public void testRedirectToHttps2() throws IOException {
        HttpGet httpGet = new HttpGet(URL_HTTP);
        HttpResponse response = redirectClient.execute(httpGet);

        StatusLine statusLine = response.getStatusLine();
        assertEquals(200, statusLine.getStatusCode());
        assertEquals("OK", statusLine.getReasonPhrase());
        assertEquals("HTTP/1.1", statusLine.getProtocolVersion().toString());

        String body = EntityUtils.toString(response.getEntity(), "UTF-8");
        assertTrue(body.contains("Zoomable Tesla supercharger map with adjustable range indicator"));
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // www.supercharge.info -> supercharge.info
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Test
    public void wwwRedirect() throws IOException {
        HttpGet httpGet = new HttpGet("http://www.supercharge.info/stuff?key1=value1&key2=value2");
        HttpResponse response = notRedirectClient.execute(httpGet);
        StatusLine statusLine = response.getStatusLine();
        assertEquals(301, statusLine.getStatusCode());
        assertEquals("Moved Permanently", statusLine.getReasonPhrase());
        assertEquals("HTTP/1.1", statusLine.getProtocolVersion().toString());

        Header[] locations = response.getHeaders("Location");
        assertEquals(1, locations.length);
        assertEquals("https://supercharge.info/stuff?key1=value1&key2=value2", locations[0].getValue());
    }
}

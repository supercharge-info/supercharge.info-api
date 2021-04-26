package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

import static launch.TomcatLauncher.CODE_OK;
import static launch.TomcatLauncher.URL_MVC;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Tests how the server handles various bad user cookie values.
 */
public class Functional_UserLoginController_BadUserCookie_IT extends Base_IT {

    @Test
    public void badEncryption() {
        // when -- we make a request with an incorrectly encrypted cookie hash.
        String url = URL_MVC + "/login/check";
        Response response = client.get(url, headers("Cookie", "user=101-40162ea33de7531b448caf79472baa"));

        // then
        commonBadCookieAssertions(response);
    }

    @Test
    public void invalidUserId() {
        // when -- we make a request with an incorrectly encrypted cookie hash.
        String url = URL_MVC + "/login/check";
        Response response = client.get(url, headers("Cookie", "user=777777-40162ea33de7531b448caf79472baa"));

        // then
        commonBadCookieAssertions(response);
    }

    @Test
    public void unParsableUserCookieValue() {
        // when -- we make a request with an incorrectly encrypted cookie hash.
        String url = URL_MVC + "/login/check";
        Response response = client.get(url, headers("Cookie", "user=thisHasNoDash"));

        // then
        commonBadCookieAssertions(response);
    }


    private void commonBadCookieAssertions(Response response) {
        // then -- the response continues on through the server, but with NO user.
        assertEquals(CODE_OK, response.responseCode);
        assertTrue(response.getBodyString().contains("FAIL"));

        // then -- the response UN-SETS the cookie.  This is important so that the bad cookie isn't sent to
        // the server over and over again.
        response.assertOneHeader("Set-Cookie", "user=; Max-Age=0; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/");
    }

    private static Map<String, String> headers(String... headers) {
        Map<String, String> headersMap = new HashMap<>();
        for (int i = 0; i < headers.length - 1; i = i + 1) {
            headersMap.put(headers[i], headers[i + 1]);
        }
        return headersMap;
    }

}

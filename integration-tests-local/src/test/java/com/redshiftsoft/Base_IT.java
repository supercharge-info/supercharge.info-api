package com.redshiftsoft;

import com.google.common.collect.ImmutableMap;
import com.redshiftsoft.lib.http.Response;
import com.redshiftsoft.lib.http.SimpleClient;
import kdw.common.math.RandomUtils;
import launch.TomcatLauncher;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static launch.TomcatLauncher.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public abstract class Base_IT {

    protected final SimpleClient client = SimpleClient.makeTrustSelfSigned();
    protected final RandomUtils random = RandomUtils.fast();

    @BeforeClass
    public static void start() {
        TomcatLauncher.start();
    }

    @AfterClass
    public static void stop() {
        TomcatLauncher.stop();
    }

    @Before
    public void clearCookies() {
        client.clearCookies();
    }

    /**
     * GET
     */
    public Response get(int code, String contentType, String url) {
        Response response = client.get(url);
        assertResponse(code, contentType, url, response);
        return response;
    }

    /**
     * POST
     */
    public Response post(int expectedResponseCode,
                         String expectedContentType, String url, String body) {
        Response response = client.post(url, body);
        assertResponse(expectedResponseCode, expectedContentType, url, response);
        return response;
    }

    /**
     * POST: post with parameters in the body, Content-Type=application/x-www-form-urlencoded
     */
    public Response postForm(int expectedResponseCode,
                             String expectedContentType, String url, Map<String, String> paramMap) {
        Response response = client.postForm(url, paramMap, new HashMap<>());
        assertResponse(expectedResponseCode, expectedContentType, url, response);
        return response;
    }

    private void assertResponse(int expectedResponseCode,
                                String expectedContentType, String url, Response response) {
        String error = String.format("failure for url='%s'; responseBody='%s'", url, response.getBodyString());
        assertEquals(error, expectedResponseCode, response.responseCode);
        assertEquals(error, expectedContentType, response.contentType);
    }

    /**
     * LOGIN.  Throws if the login fails.
     */
    public LoginResponse login(String username, String password) {
        LoginResponse r = doLogin(username, password, CODE_OK);
        assertTrue(r.result.equals("SUCCESS"));
        assertTrue(r.username.equals(username));
        return r;
    }

    /**
     * LOGIN.
     */
    public LoginResponse doLogin(String username, String password, int expectedStatusCode) {
        Map<String, String> paramMap = ImmutableMap.of("username", username, "password", password);
        Response r = postForm(expectedStatusCode, T_JSON, URL_MVC + "/login", paramMap);
        return r.bodyAs(LoginResponse.class);
    }

    /**
     * LOGIN CHECK
     */
    public LoginResponse loginCheck(String expectedResult,
                                    String expectedUser,
                                    List<String> expectedRoles,
                                    List<String> expectedMessages) {
        Response response = get(CODE_OK, T_JSON, URL_MVC + "/login/check");
        LoginResponse resObject = response.bodyAs(LoginResponse.class);
        assertEquals(expectedResult, resObject.result);
        assertEquals(expectedUser, resObject.username);
        assertEquals(expectedRoles, resObject.roles);
        assertEquals(expectedMessages, resObject.messages);
        return resObject;
    }

    /**
     * LOGOUT
     */
    public Response logout() {
        Response r = get(CODE_OK, T_NONE, URL_MVC + "/login/out");
        r.assertOneHeader("Set-Cookie", "user=; Max-Age=0; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/");
        return r;
    }

    /**
     * CREATE ACCOUNT
     */
    public Response createAccount(String username, String email, String password) {
        String jsonBody = createAccountRequest(username, email, password, "MI");
        return post(CODE_OK, T_JSON, URL_MVC + "/user/create", jsonBody);
    }

    public String createAccountRequest(String username, String email, String password, String unit) {
        return "{" +
                q("username", username) + "," +
                q("email", email) + "," +
                q("password", password) + "," +
                q("unit", unit) +
                "}";
    }

    /**
     * CREATE SITE: Will login as an editor, then logout.
     */
    public int createSite(String urlDiscuss) {
        try {
            login("editor_only", "password");

            String url = URL_MVC + "/siteadmin/edit";
            String requestBody = S
                    .replace("{locationId}", RandomUtils.fast().getString(10, 15, 'a', 'z'))
                    .replace("{name}", RandomUtils.fast().getString(10, 15, 'a', 'z'))
                    .replace("{street}", RandomUtils.fast().getString(10, 35, 'a', 'z'))
                    .replace("{urlDiscuss}", urlDiscuss);
            Response r = post(CODE_OK, "application/json;charset=UTF-8", url, requestBody);
            String bodyString = r.getBodyString();
            String siteIdRegEx = "\"siteId\"\\s*:\\s*(\\d+)";
            Matcher matcher = Pattern.compile(siteIdRegEx).matcher(bodyString);
            if (matcher.find()) {
                String siteIdString = matcher.group(1);
                return Integer.parseInt(siteIdString);
            }
            throw new IllegalStateException();
        } finally {
            client.clearCookies();
        }
    }

    protected static String q(String key, String value) {
        return "\"" + key + "\"" + ":" + "\"" + value + "\"";
    }

    private static final String S = "{" +
            "\"id\":\"\"," +
            "\"locationId\":\"{locationId}\"," +
            "\"name\":\"integration_test_{name}\"," +
            "\"status\":\"PERMIT\"," +
            "\"dateOpened\":\"\"," +
            "\"hours\":\"\"," +
            "\"counted\":\"true\"," +
            "\"gps\":{\"latitude\":\"4\",\"longitude\":\"5\"}," +
            "\"elevationMeters\":\"43\"," +
            "\"urlDiscuss\":\"{urlDiscuss}\"," +
            "\"stallCount\":\"4\"," +
            "\"address\":{\"street\":\"{street}\",\"city\":\"city1\",\"state\":\"\",\"zip\":\"\",\"countryId\":\"110\"}," +
            "\"powerKiloWatt\":\"\"," +
            "\"solarCanopy\":\"false\"," +
            "\"battery\":\"false\"," +
            "\"developerNotes\":\"\"" +
            "}";


    protected static class LoginResponse {
        String result;
        List<String> messages;
        String username;
        String email;
        boolean emailVerified;
        String description;
        String creationDate;
        List<String> roles;
    }
}

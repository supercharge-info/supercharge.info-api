package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Assert;
import org.junit.Test;

import static com.redshiftsoft.R.randomEmail;
import static com.redshiftsoft.R.randomUsername;
import static launch.TomcatLauncher.*;

public class Functional_UserCreateController_IT extends Base_IT {

    String username = R.randomUsername();
    String password = R.randomPassword();
    String email = randomEmail();

    @Test
    public void nominal() {
        // given
        String jsonBody = createAccountRequest(username, email, password, "KM");

        // when
        Response r = post(CODE_OK, T_JSON, URL_MVC + "/user/create", jsonBody);

        // then
        Assert.assertEquals("{\"result\":\"SUCCESS\",\"messages\":[\"Success\"]}", r.getBodyString());
    }

    @Test
    public void temporary_user() {
        // given
        String jsonBody1 = createAccountRequest("temporary__" + random.getString(1, 10, 'a', 'z'), email, password, "KM");
        String jsonBody2 = createAccountRequest("temp__" + random.getString(1, 10, 'a', 'z'), email, password, "KM");
        String jsonBody3 = createAccountRequest("TempoRarY__" + random.getString(1, 10, 'a', 'z'), email, password, "KM");
        String jsonBody4 = createAccountRequest("TEMP__" + random.getString(1, 10, 'a', 'z'), email, password, "KM");

        // when
        Response r1 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody1);
        Response r2 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody2);
        Response r3 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody3);
        Response r4 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody4);

        // then
        String expectedResponse = "{\"result\":\"FAIL\",\"messages\":[\"username cannot start with temporary__\"]}";
        Assert.assertEquals(expectedResponse, r1.getBodyString());
        Assert.assertEquals(expectedResponse, r2.getBodyString());
        Assert.assertEquals(expectedResponse, r3.getBodyString());
        Assert.assertEquals(expectedResponse, r4.getBodyString());
    }


    @Test
    public void badEmail() {
        // given
        email = "it_" + random.getString(10, 20, 'a', 'z');
        String jsonBody = createAccountRequest(username, email, password, "MI");

        // when
        Response r = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody);

        // then
        Assert.assertEquals("{\"result\":\"FAIL\",\"messages\":[\"invalid email address\"]}", r.getBodyString());
    }

    @Test
    public void cannotCreateSecondUsernameWithDifferentCase() {
        // given
        String jsonBody1 = createAccountRequest(username.toLowerCase(), randomEmail(), password, "MI");
        String jsonBody2 = createAccountRequest(username.toUpperCase(), randomEmail(), password, "MI");

        // when
        Response r1 = post(CODE_OK, T_JSON, URL_MVC + "/user/create", jsonBody1);
        Response r2 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody2);

        // then
        Assert.assertEquals("{\"result\":\"SUCCESS\",\"messages\":[\"Success\"]}", r1.getBodyString());
        Assert.assertEquals("{\"result\":\"FAIL\",\"messages\":[\"account with this username already exists\"]}", r2.getBodyString());
    }

    @Test
    public void cannotCreateSecondEmailWithDifferentCase() {
        // given
        String jsonBody1 = createAccountRequest(randomUsername(), random.mixCase(email), password, "MI");
        String jsonBody2 = createAccountRequest(randomUsername(), random.mixCase(email), password, "MI");

        // when
        Response r1 = post(CODE_OK, T_JSON, URL_MVC + "/user/create", jsonBody1);
        Response r2 = post(CODE_BAD_REQUEST, T_JSON, URL_MVC + "/user/create", jsonBody2);

        // then
        Assert.assertEquals("{\"result\":\"SUCCESS\",\"messages\":[\"Success\"]}", r1.getBodyString());
        Assert.assertEquals("{\"result\":\"FAIL\",\"messages\":[\"account with this email address already exists\"]}", r2.getBodyString());
    }


}

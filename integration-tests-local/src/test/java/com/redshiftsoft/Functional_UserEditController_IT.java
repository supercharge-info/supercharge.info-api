package com.redshiftsoft;

import com.redshiftsoft.lib.http.Response;
import org.junit.Test;

import static launch.TomcatLauncher.*;
import static org.junit.Assert.assertEquals;

public class Functional_UserEditController_IT extends Base_IT {

    String password = R.randomPassword();
    String username = R.randomUsername();
    String oldEmail = R.randomEmail();

    @Test
    public void emailChange() {
        // given
        createAccount(username, oldEmail, password);
        login(username, password);

        // when
        String newEmail = oldEmail + "2";
        String jsonBody = editRequest(newEmail);
        Response r = post(CODE_OK, T_JSON, URL_MVC + "/user/edit", jsonBody);

        // then
        assertEquals("{\"result\":\"SUCCESS\",\"messages\":null}", r.getBodyString());
        // then -- can login with new values
        LoginResponse login = login(username, password);
        assertEquals(newEmail, login.email);
        assertEquals(username, login.username);
    }


    private String editRequest(String email) {
        return "{" + q("email", email) + "}";
    }
}

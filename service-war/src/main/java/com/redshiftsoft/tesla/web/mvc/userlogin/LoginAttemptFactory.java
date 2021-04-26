package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.redshiftsoft.tesla.dao.login.LoginAttempt;
import com.redshiftsoft.tesla.dao.login.LoginResult;
import com.redshiftsoft.tesla.dao.login.LoginType;
import com.redshiftsoft.tesla.dao.user.User;

import javax.servlet.http.HttpServletRequest;

/**
 * This class exists because the constructor of LoginAttempt is a bit unwieldy.  The factory methods can't be in
 * LoginAttempt itself without adding the servlet api dependency to that class.
 */
public class LoginAttemptFactory {

    // - - - - - - - - - - -
    // LoginResult = SUCCESS
    // - - - - - - - - - - -

    public static LoginAttempt successForm(HttpServletRequest request, User user) {
        return new LoginAttempt(user, LoginResult.SUCCESS, LoginType.FORM, request.getRemoteAddr(), request.getLocale());
    }

    public static LoginAttempt successResetPassword(HttpServletRequest request, User user) {
        return new LoginAttempt(user, LoginResult.SUCCESS, LoginType.RESET_PWD, request.getRemoteAddr(), request.getLocale());
    }

    public static LoginAttempt successAccountCreated(HttpServletRequest request, User user) {
        return new LoginAttempt(user, LoginResult.SUCCESS, LoginType.USER_CREATE, request.getRemoteAddr(), request.getLocale());
    }

    // - - - - - - - - - - -
    // LoginResult = INVALID_CREDENTIALS
    // - - - - - - - - - - -

    public static LoginAttempt badCredentials(HttpServletRequest request, User user) {
        return new LoginAttempt(user, LoginResult.INVALID_CREDENTIALS, LoginType.FORM, request.getRemoteAddr(), request.getLocale());
    }

    // - - - - - - - - - - -
    // LoginResult = LOCKED
    // - - - - - - - - - - -

    public static LoginAttempt locked(HttpServletRequest request, User user) {
        return new LoginAttempt(user, LoginResult.LOCKED, LoginType.FORM, request.getRemoteAddr(), request.getLocale());
    }

}

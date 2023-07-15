package com.redshiftsoft.tesla.web.mvc.account;

import com.redshiftsoft.tesla.dao.login.LoginAttempt;

import java.util.function.Function;

public class LoginAttemptDTOFunction implements Function<LoginAttempt, LoginAttemptDTO> {
    @Override
    public LoginAttemptDTO apply(LoginAttempt loginAttempt) {
        LoginAttemptDTO dto = new LoginAttemptDTO();
        dto.setDate(loginAttempt.getDate());
        dto.setResult(loginAttempt.getResult());
        dto.setType(loginAttempt.getType());
        dto.setRemoteIP(loginAttempt.getRemoteIP());
        dto.setLocale(loginAttempt.getLocale().toString());
        return dto;
    }
}

package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.redshiftsoft.tesla.dao.login.LoginAttempt;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.function.Function;

public class LoginAttemptDTOFunction implements Function<LoginAttempt, LoginAttemptDTO> {
    @Override
    public LoginAttemptDTO apply(LoginAttempt loginAttempt) {
        LoginAttemptDTO dto = new LoginAttemptDTO();
        dto.setDate(LocalDateTime.ofInstant(loginAttempt.getDate(), ZoneId.systemDefault()));
        dto.setResult(loginAttempt.getResult());
        dto.setType(loginAttempt.getType());
        dto.setRemoteIP(loginAttempt.getRemoteIP());
        dto.setLocale(loginAttempt.getLocale().toString());
        return dto;
    }
}

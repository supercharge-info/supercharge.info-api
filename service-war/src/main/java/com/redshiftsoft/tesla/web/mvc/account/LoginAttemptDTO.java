package com.redshiftsoft.tesla.web.mvc.account;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.dao.login.LoginResult;
import com.redshiftsoft.tesla.dao.login.LoginType;
import com.redshiftsoft.tesla.web.json.InstantSerializer;

import java.time.Instant;

public class LoginAttemptDTO {

    private Instant date;
    private LoginResult result;
    private LoginType type;
    private String remoteIP;
    private String locale;

    public void setDate(Instant date) {
        this.date = date;
    }

    public void setResult(LoginResult result) {
        this.result = result;
    }

    public void setType(LoginType type) {
        this.type = type;
    }

    public void setRemoteIP(String remoteIP) {
        this.remoteIP = remoteIP;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    @JsonSerialize(using = InstantSerializer.class)
    public Instant getDate() {
        return date;
    }

    public LoginResult getResult() {
        return result;
    }

    public LoginType getType() {
        return type;
    }

    public String getRemoteIP() {
        return remoteIP;
    }

    public String getLocale() {
        return locale;
    }
}

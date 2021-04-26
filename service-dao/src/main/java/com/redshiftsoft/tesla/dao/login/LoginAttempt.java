package com.redshiftsoft.tesla.dao.login;


import com.redshiftsoft.tesla.dao.user.User;

import java.io.Serializable;
import java.time.Instant;
import java.util.Locale;

public class LoginAttempt implements Serializable, Comparable<LoginAttempt> {

    private Instant date;
    private final LoginResult result;
    private final LoginType type;
    private final User user;
    private final String remoteIP;
    private final Locale locale;

    /**
     * Constructor
     */
    public LoginAttempt(User userIn, LoginResult resultIn, LoginType loginType, String remoteIPIn, Locale localeIn) {
        this.user = userIn;
        this.result = resultIn;
        this.remoteIP = remoteIPIn;
        this.locale = localeIn;
        this.type = loginType;
        this.date = Instant.now();
    }

    // -------------------------------
    // java.lang.Object
    // -------------------------------

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("date='" + date + "'");
        b.append(" user='" + (user != null ? user.getUsername() : "") + "'");
        b.append(" result='" + result + "'");
        b.append(" IP='" + remoteIP + "'");
        return b.toString();
    }

    @Override
    public int compareTo(LoginAttempt rhs) {
        return this.getDate().compareTo(rhs.getDate());
    }

    @Override
    public int hashCode() {
        return this.toString().hashCode();
    }

    // -------------------------------
    //
    // getters/setters/
    //
    // -------------------------------

    public User getUser() {
        return user;
    }

    public Instant getDate() {
        return date;
    }

    public void setDate(Instant date) {
        this.date = date;
    }

    public String getRemoteIP() {
        return remoteIP;
    }

    public LoginResult getResult() {
        return result;
    }

    public Locale getLocale() {
        return locale;
    }

    public LoginType getType() {
        return type;
    }

}
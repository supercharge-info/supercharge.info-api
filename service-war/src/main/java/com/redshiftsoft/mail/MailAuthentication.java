package com.redshiftsoft.mail;

import kdw.common.string.StringTools;

import java.io.Serializable;

public class MailAuthentication implements Serializable {

    private String user;
    private String password;

    // ---------------------------------------------------
    // Constructors
    // ---------------------------------------------------

    public MailAuthentication() {
    }

    public MailAuthentication(final String userIn, final String passwordIn) {
        this.user = userIn;
        this.password = passwordIn;
    }

    /**
     * Copy constructor
     */
    public MailAuthentication(MailAuthentication authentication) {
        this.user = authentication.getUser();
        this.password = authentication.getPassword();
    }

    // ---------------------------------------------------
    // java.lang.Object
    // ---------------------------------------------------

    @Override
    public String toString() {
        return user + "|" + ((password == null || password.length() == 0) ? "not set" : "set");
    }

    @Override
    public boolean equals(final Object rhs) {
        return (rhs == this) || (rhs instanceof MailAuthentication) && this.toString().equals(rhs.toString());
    }

    @Override
    public int hashCode() {
        return this.toString().hashCode();
    }

    // ---------------------------------------------------
    // getters/setters
    // ---------------------------------------------------

    /**
     * Returns true if BOTH the password and user are empty.
     */
    public boolean isEmpty() {
        return !containsUser() && !containsPassword();
    }

    public boolean containsUser() {
        return StringTools.isNotEmpty(getUser());
    }

    public boolean containsPassword() {
        return StringTools.isNotEmpty(getPassword());
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(final String pass) {
        this.password = (pass == null) ? null : pass.trim();
    }

    public String getUser() {
        return user;
    }

    public void setUser(final String username) {
        this.user = (username == null) ? null : username.trim();
    }

}

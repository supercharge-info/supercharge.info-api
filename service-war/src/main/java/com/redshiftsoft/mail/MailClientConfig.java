package com.redshiftsoft.mail;

import com.redshiftsoft.util.StringTools;

import java.io.Serializable;

public class MailClientConfig implements Serializable {

    public static final String PROTOCOL_SMTP = "smtp";
    public static final String PROTOCOL_SMTPS = "smtps";

    // --------------------------------------------
    // fields
    // --------------------------------------------

    private String host;
    private int port;
    private String protocol;
    private MailAuthentication authentication;

    /**
     * If true, enables the use of the STARTTLS command (if supported by the server) to switch the connection to a
     * TLS-protected connection before issuing any login commands. Note that an appropriate trust store must configured so
     * that the client will trust the server's certificate. Defaults to false.
     */
    private boolean startTLSEnabled;

    /**
     * If true, requires the use of the STARTTLS command. If the server doesn't support the STARTTLS command, or the
     * command fails, the connect method will fail. Defaults to false.
     */
    private boolean startTLSRequired;

    /**
     * If set to "*", all hosts are trusted. If set to a whitespace separated list of hosts, those hosts are trusted.
     * Otherwise, trust depends on the certificate the server presents.
     */
    private String trustedHosts;

    // --------------------------------------------
    // Constructors
    // --------------------------------------------

    public MailClientConfig() {
    }

    public MailClientConfig(String host, int port, String protocol, MailAuthentication authentication) {
        setHost(host);
        setPort(port);
        setProtocol(protocol);
        setAuthentication(authentication);
    }

    /**
     * COPY constructor.  Copies entire state of configuration object.
     */
    public MailClientConfig(final MailClientConfig config) {
        this(config.getHost(), config.getPort(), config.getProtocol(), new MailAuthentication(config.getAuthentication()));
        this.setStartTLSEnabled(config.isStartTLSEnabled());
        this.setStartTLSRequired(config.isStartTLSRequired());
        this.setTrustedHosts(config.getTrustedHosts());
    }

    // --------------------------------------------
    //
    // --------------------------------------------

    public boolean isAuthenticationUsed() {
        return authentication != null && !authentication.isEmpty();
    }

    // --------------------------------------------
    // java.lang.Object
    // --------------------------------------------

    @Override
    public boolean equals(final Object rhs) {
        return (rhs == this) || (rhs instanceof MailClientConfig) && this.toString().equals(rhs.toString());
    }

    @Override
    public String toString() {
        return String.format(
                "hostname='%s', port='%s', protocol='%s', startTLSEnabled='%s' startTLSRequired='%s', " +
                        "trustedHosts='%s' authentication='%s'",
                host, port, protocol, startTLSEnabled, startTLSRequired,
                trustedHosts, (authentication == null ? null : authentication.toString()));
    }

    @Override
    public int hashCode() {
        return this.toString().hashCode();
    }

    // --------------------------------------------
    // getters/setters
    // --------------------------------------------

    public MailAuthentication getAuthentication() {
        return authentication;
    }

    public void setAuthentication(MailAuthentication mailAuthentication) {
        this.authentication = mailAuthentication;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String hostname) {
        this.host = (hostname == null) ? null : hostname.trim();
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getProtocol() {
        return protocol;
    }

    public void setProtocol(final String protocolIn) {
        if (StringTools.isEmpty(protocolIn)) {
            throw new IllegalArgumentException("protocol cannot be empty");
        }
        // Otherwise don't validate the protocol, arbitrary providers can be plugged into JVM.
        this.protocol = protocolIn.trim();

    }

    public boolean isStartTLSEnabled() {
        return startTLSEnabled;
    }

    public void setStartTLSEnabled(boolean startTLSEnabled) {
        this.startTLSEnabled = startTLSEnabled;
    }

    public boolean isStartTLSRequired() {
        return startTLSRequired;
    }

    public void setStartTLSRequired(boolean startTLSRequired) {
        this.startTLSRequired = startTLSRequired;
    }

    public String getTrustedHosts() {
        return trustedHosts;
    }

    public void setTrustedHosts(String trustedHosts) {
        this.trustedHosts = trustedHosts;
    }
}

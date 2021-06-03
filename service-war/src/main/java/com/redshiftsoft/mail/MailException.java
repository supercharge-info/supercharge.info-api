package com.redshiftsoft.mail;

/**
 * Indicates a fatal error. Mail could not be sent (unable to connect, etc).
 * <p/>
 * This exception exists ONLY to wrap the checked exception of the underlying mail API. It allows clients to use our
 * mail classes without any compile time dependency on that API.
 */
public class MailException extends Exception {

    public MailException(final Throwable t) {
        super(t);
    }

}

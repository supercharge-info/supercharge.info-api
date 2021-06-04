package com.redshiftsoft.mail;

import com.redshiftsoft.util.StringTools;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/**
 * Represents a single email.
 */
public class Email implements Serializable {

    public static final String CONTENT_TYPE_HTML = "text/html; charset=UTF-8";
    public static final String CONTENT_TYPE_PLAIN = "text/plain; charset=UTF-8";
    private final List<String> toAddress = new ArrayList<>();
    private final List<String> replyToAddress = new ArrayList<>();
    private String fromAddress;
    private String subject;
    private String body;
    private String contentType = CONTENT_TYPE_HTML;
    private List<MailAttachment> attachments = new ArrayList<>();

    /**
     * If set this will be the value of the email Message-ID header. Value should not include enclosing brackets, which
     * will be added automatically.
     */
    private String messageID;

    // ------------------------------------
    // Constructors
    // ------------------------------------

    public Email() {

    }

    /**
     * Construct a new email with default content type (text/html; charset=UTF-8).
     *
     * @param toAddress   Address to send to.
     * @param fromAddress Address sending from.
     * @param subject     Subject of this email.
     * @param body        Body of this email.
     */
    public Email(final String toAddress, final String fromAddress, final String subject, final String body) {
        addToAddress(toAddress);
        this.fromAddress = fromAddress;
        this.subject = subject;
        this.body = body;
    }

    // ------------------------------------
    // getters/setters
    // ------------------------------------

    @Override
    public String toString() {
        return "to=" + toAddress + " from=" + fromAddress + " subject=" + subject;
    }

    // ------------------------------------
    //
    // ------------------------------------

    public InternetAddress[] getReplyToInternetAddress() throws AddressException {
        List<String> reply = getReplyToAddress();
        InternetAddress[] r = new InternetAddress[reply.size()];
        int i = 0;
        for (String string : reply) {
            r[i++] = new InternetAddress(string);
        }
        return r;
    }

    public InternetAddress[] getToInternetAddress() throws AddressException {
        List<String> toList = getToAddress();
        InternetAddress[] r = new InternetAddress[toList.size()];
        int i = 0;
        for (String string : toList) {
            r[i++] = new InternetAddress(string);
        }
        return r;
    }

    // ------------------------------------
    // getters/setters
    // ------------------------------------


    public String getFromAddress() {
        return fromAddress;
    }

    public void setFromAddress(String fromAddress) {
        this.fromAddress = fromAddress;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getMessageID() {
        return messageID;
    }

    public void setMessageID(String messageID) {
        this.messageID = messageID;
    }

    public List<MailAttachment> getAttachments() {
        return attachments;
    }

    public void setAttachments(final List<MailAttachment> attachments) {
        this.attachments = Objects.requireNonNullElseGet(attachments, ArrayList::new);
    }

    public void addAttachments(MailAttachment attachment) {
        this.attachments.add(attachment);
    }

    public List<String> getReplyToAddress() {
        return Collections.unmodifiableList(replyToAddress);
    }

    public void setReplyToAddress(List<String> replyTo) {
        if (replyTo == null) {
            throw new IllegalArgumentException();
        }
        this.replyToAddress.clear();
        for (String address : replyTo) {
            addReplyToAddress(address);
        }
    }

    public void addReplyToAddress(final String address) {
        if (StringTools.isEmpty(address)) {
            throw new IllegalArgumentException();
        }
        this.replyToAddress.add(address);
    }

    public List<String> getToAddress() {
        return Collections.unmodifiableList(toAddress);
    }

    public void setToAddress(List<String> toAddress) {
        if (toAddress == null) {
            throw new IllegalArgumentException();
        }
        this.toAddress.clear();
        for (String address : toAddress) {
            addToAddress(address);
        }
    }

    public void addToAddress(final String to) {
        if (StringTools.isEmpty(to)) {
            throw new IllegalArgumentException();
        }
        this.toAddress.add(to);
    }

}

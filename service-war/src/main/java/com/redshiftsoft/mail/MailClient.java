package com.redshiftsoft.mail;

import com.sun.mail.smtp.SMTPTransport;
import kdw.common.string.StringTools;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;
import java.util.Date;
import java.util.Properties;

/**
 * SMTP client. Isolates clients from Java-Mail API.
 */
public class MailClient {

    /**
     * Mail connection configuration
     */
    private final MailClientConfig config;

    private final Properties props = new Properties();

    /**
     * Constructor which takes SMTP hostname and port
     */
    public MailClient(final MailClientConfig mailConfig) {
        this.config = mailConfig;

        /* Mail properties */
        props.put("mail.smtp.starttls.enable", config.isStartTLSEnabled());
        props.put("mail.smtp.starttls.required", config.isStartTLSRequired());
        if (StringTools.isNotEmpty(config.getTrustedHosts())) {
            props.put("mail.smtp.ssl.trust", config.getTrustedHosts());
            props.put("mail.smtps.ssl.trust", config.getTrustedHosts());
        }

        props.put("mail.smtp.host", config.getHost());
        props.put("mail.smtp.port", config.getPort() + "");
        props.put("mail.smtp.auth", config.isAuthenticationUsed() + "");
        // Do NOT wait for response to QUIT command. Fixes issue with SSL Gmail.
        props.put("mail.smtp.quitwait", "false");
    }

    /**
     * Send mail via the already established connection.
     *
     * @param mail Email to send.
     * @throws MailException when there is a fatal error and mail cannot be sent
     */
    public void sendMail(final Email mail) throws MailException {

        Session mailSession = Session.getInstance(props);
        /* Enable debugging in JavaMail classes with this flag */
        mailSession.setDebug(false);

        try {

            /* Create the Multipart */
            Multipart mimeMultipart = new MimeMultipart();

            /* Create body part containing message. */
            MimeBodyPart textBodyPart = new MimeBodyPart();
            textBodyPart.setContent(mail.getBody(), mail.getContentType());
            mimeMultipart.addBodyPart(textBodyPart);

            /* ATTACHMENTS: create body parts containing attachments (if any) */
            for (MailAttachment attach : mail.getAttachments()) {
                MimeBodyPart filePart = new MimeBodyPart();

                /*
                 * MimeBodyPart.setContent(Object,String) was used originally, but that method ONLY works for
                 * mime types that the API is aware of. We want to be able to handle arbitrary mime types.
                 * JavaMail itself will base64 encode the bytes and set appropriate encoding header.
                 */
                DataSource ds = new ByteArrayDataSource(attach.getBytes(), attach.getMimeType());
                filePart.setDataHandler(new DataHandler(ds));
                /* JavaMail knows to use quotes if the file name contains spaces. */
                filePart.setFileName(attach.getFileName());
                mimeMultipart.addBodyPart(filePart);
            }

            /* Create the message */
            MimeMessage mimeMessage = new CustomMimeMessage(mailSession, mail.getMessageID());
            mimeMessage.setFrom(new InternetAddress(mail.getFromAddress()));
            mimeMessage.setRecipients(Message.RecipientType.TO, mail.getToInternetAddress());
            if (mail.getReplyToAddress().size() > 0) {
                mimeMessage.setReplyTo(mail.getReplyToInternetAddress());
            }
            mimeMessage.setSubject(mail.getSubject());
            mimeMessage.setSentDate(new Date());
            mimeMessage.setContent(mimeMultipart);

            /* FINALLY, send the message */
            try (SMTPTransport t = (SMTPTransport) mailSession.getTransport(config.getProtocol())) {
                if (config.isAuthenticationUsed()) {
                    String username = config.getAuthentication().getUser();
                    String password = config.getAuthentication().getPassword();
                    t.connect(config.getHost(), config.getPort(), username, password);
                } else {
                    t.connect();
                }
                t.sendMessage(mimeMessage, mimeMessage.getAllRecipients());
            }
        } catch (MessagingException e) {
            throw new MailException(e);
        }

    }

    /**
     * JavaMail will set a Message-ID field containing the user and hostname from the machine where the message was created
     * unless we override this behavior.
     * <p/>
     * Format for the value of "Message-ID" is "<string@domain>"
     */
    static class CustomMimeMessage extends MimeMessage {

        private final String messageID;

        public CustomMimeMessage(final Session session, final String messageID) {
            super(session);
            this.messageID = messageID;
        }

        protected void updateMessageID() throws MessagingException {
            if (messageID != null && messageID.length() > 0) {
                setHeader("Message-ID", "<" + messageID + ">");
            } else {
                super.updateMessageID();
            }
        }
    }
}



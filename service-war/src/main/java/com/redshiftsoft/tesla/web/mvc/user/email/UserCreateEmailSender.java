package com.redshiftsoft.tesla.web.mvc.user.email;

import org.springframework.stereotype.Component;

@Component
public class UserCreateEmailSender extends VerifyMailSender {

    @Override
    String getBodyTemplate() {
        return "Created account <b>${username}</b> at supercharge.info with email address <b>${email}</b>." +
                "<br/><br/>" +
                "Click this link to verify the email address:<br/><br/>" +
                "https://supercharge.info/service/supercharge/email-verification/verify?key=${resetKey}" +
                "<br/><br/>";
    }

    @Override
    String getFromAddress() {
        return "supercharge.info <notify@supercharge.info>";
    }

    @Override
    String getSubject() {
        return "Email Verification: supercharge.info";
    }

}
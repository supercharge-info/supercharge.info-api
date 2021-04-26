package com.redshiftsoft.tesla.web.mvc.user.email;

import org.springframework.stereotype.Component;

@Component
public class UserEditEmailSender extends VerifyMailSender {

    @Override
    String getBodyTemplate() {
        return "Email address for account <b>${username}</b> at supercharge.info changed to ${email}." +
                "<br/><br/>" +
                "Click this link to verify the new address:<br/><br/>" +
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
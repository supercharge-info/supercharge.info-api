package com.redshiftsoft.tesla.web.mvc.user.email;

import org.springframework.stereotype.Component;

@Component
public class PasswordResetEmailSender extends VerifyMailSender {

    @Override
    String getBodyTemplate() {
        return "Click this link:<br/><br/>" +
                "https://supercharge.info/service/supercharge/password/login?key=${resetKey}" +
                "<br/><br/>" +
                "Then <b>Profile -> Change Password</b> to set a new password." +
                "<br/><br/>";
    }

    @Override
    String getFromAddress() {
        return "supercharge.info <notify@supercharge.info>";
    }

    @Override
    String getSubject() {
        return "Password Reset: supercharge.info";
    }

}
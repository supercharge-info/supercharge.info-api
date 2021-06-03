package com.redshiftsoft.tesla.web.mvc.user.email;

import com.redshiftsoft.mail.Email;
import com.redshiftsoft.mail.MailSender;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserResetPwdDAO;

import javax.annotation.Resource;

public abstract class VerifyMailSender {

    @Resource
    private MailSender mailSender;
    @Resource
    private UserResetPwdDAO userResetPwdDAO;

    public void send(User user) {
        String resetKey = userResetPwdDAO.insertKey(user.getId());

        String body = getBodyTemplate();
        body = body.replace("${resetKey}", resetKey);
        body = body.replace("${username}", user.getUsername());
        body = body.replace("${email}", user.getEmail());

        Email email = new Email(user.getEmail(), getFromAddress(), getSubject(), body);
        mailSender.sendMail(email);
    }

    abstract String getBodyTemplate();

    abstract String getFromAddress();

    abstract String getSubject();

}
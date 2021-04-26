package com.redshiftsoft.tesla.web.mvc.user.validation;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import kdw.common.string.StringTools;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.regex.Pattern;

@Component
public class EmailValidation {

    private static final Pattern emailPattern = Pattern.compile("(?i)[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

    public EmailValidation(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    private final UserDAO userDAO;

    public void validate(String email, List<String> errors) {
        if (StringTools.isEmpty(email)) {
            errors.add("email is required");
            return;
        }
        if (email.length() > User.MAX_LEN_EMAIL) {
            errors.add(String.format("email can not be longer than %,d characters", User.MAX_LEN_EMAIL));
        }
        if (!emailPattern.matcher(email).matches()) {
            errors.add("invalid email address");
        }
        if (userDAO.existsEmail(email)) {
            errors.add("account with this email address already exists");
        }
    }

    public List<String> validate(String username) {
        List<String> errors = Lists.newArrayList();
        validate(username, errors);
        return errors;
    }

}

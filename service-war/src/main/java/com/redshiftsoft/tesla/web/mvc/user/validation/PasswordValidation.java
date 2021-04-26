package com.redshiftsoft.tesla.web.mvc.user.validation;

import com.google.common.collect.Lists;
import kdw.common.string.StringTools;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PasswordValidation {

    private static final int minLen = 8;

    public void validate(String password, String username, List<String> errors) {
        if (StringTools.isEmpty(password) || password.length() < minLen) {
            errors.add(String.format("password must be at least %,d characters", minLen));
        }
        if (StringTools.containsIgnoreCase(password, username)) {
            errors.add("password cannot contain username");
        }
        if (StringTools.containsIgnoreCase(username, password)) {
            errors.add("username cannot contain password");
        }
    }

    public List<String> validate(String password, String username) {
        List<String> errors = Lists.newArrayList();
        validate(password, username, errors);
        return errors;
    }

}

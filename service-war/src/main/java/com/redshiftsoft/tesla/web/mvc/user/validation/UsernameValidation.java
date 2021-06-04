package com.redshiftsoft.tesla.web.mvc.user.validation;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.util.StringTools;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.regex.Pattern;

@Component
public class UsernameValidation {

    private static final List<String> S = Lists.newArrayList("temp__", "temporary__");
    private static final Pattern userPattern = Pattern.compile("[a-zA-Z0-9+_\\-@\\.]+");
    private static final int minLength = 3;

    private final UserDAO userDAO;

    public UsernameValidation(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public void validate(String username, List<String> errors) {
        if (StringTools.isEmpty(username) || username.length() < minLength) {
            errors.add(String.format("username must be at least %,d characters", minLength));
            /* may be null, return */
            return;
        }
        if (username.length() > User.MAX_LEN_USERNAME) {
            errors.add(String.format("username must be fewer than %,d characters", User.MAX_LEN_USERNAME));
        }
        if (S.stream().anyMatch(username.toLowerCase()::startsWith)) {
            errors.add("username cannot start with temporary__");
        }
        if (!userPattern.matcher(username).matches()) {
            errors.add("invalid characters in username");
        }
        if (userDAO.existsUsername(username)) {
            errors.add("account with this username already exists");
        }
    }

    public List<String> validate(String username) {
        List<String> errors = Lists.newArrayList();
        validate(username, errors);
        return errors;
    }


}

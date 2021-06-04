package com.redshiftsoft.tesla.dao;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.util.PasswordHashLogic;
import com.redshiftsoft.util.RandomUtils;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.Arrays;
import java.util.List;

public class TestUsers {

    private static final RandomUtils randomUtils = RandomUtils.fast();
    private static final List<String> POSSIBLE_ROLES = Arrays.asList("admin", "editor", "feature");
    private static final PasswordHashLogic passwordHashLogic = new PasswordHashLogic();

    public static User createUser() {
        User userIn = new User();

        //
        // Mixed case username.
        //
        String username = randomUtils.mixCase(randomUtils.getString(User.MIN_LEN_USERNAME, User.MAX_LEN_USERNAME, 'a', 'z'));
        userIn.setUsername(username);

        //
        // Mixed case email
        //
        String email = randomUtils.mixCase(randomUtils.getString(User.MAX_LEN_EMAIL, 'a', 'z'));
        userIn.setEmail(email);

        userIn.setEnabled(randomUtils.getBoolean(.9));

        //
        // Roles
        //
        int roleCount = randomUtils.getInteger(0, POSSIBLE_ROLES.size());
        List<String> roles = randomUtils.getElements(POSSIBLE_ROLES, roleCount);
        userIn.setRoles(roles);

        //
        // Password = password
        //
        String salt = passwordHashLogic.generateNewSalt();
        userIn.setPasswordSalt(salt);
        userIn.setPasswordHash(passwordHashLogic.hash("password", salt));

        userIn.setCreationDate(LocalDateTime.now().toInstant(ZoneOffset.UTC));

        if (randomUtils.getBoolean()) {
            userIn.setDescription(randomUtils.getString(10, User.MAX_LEN_DESCRIPTION, 'a', 'z'));
        }

        return userIn;
    }

}

package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;


@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserDAO_Update_UT {

    @Resource
    private UserDAO userDAO;

    @Test
    public void updatePasswordHash() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);

        // when
        String newPasswordHash = RandomUtils.fast().getString(64, '0', 'F');
        userDAO.updatePasswordHash(userIn.getId(), newPasswordHash);

        // then
        assertEquals(newPasswordHash, userDAO.getById(userIn.getId()).getPasswordHash());
    }

    @Test
    public void updateUsername() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);

        // when
        String newUsername = RandomUtils.fast().getString(User.MAX_LEN_USERNAME, '0', 'F');
        userDAO.updateUsername(userIn.getId(), newUsername);

        // then
        assertEquals(newUsername, userDAO.getById(userIn.getId()).getUsername());
    }

    @Test
    public void updateEmail() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);

        // when
        String newEmail = RandomUtils.fast().getString(User.MAX_LEN_USERNAME, '0', 'F');
        userDAO.updateEmail(userIn.getId(), newEmail);

        // then
        assertEquals(newEmail, userDAO.getById(userIn.getId()).getEmail());
    }

    @Test
    public void updateDescription() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);

        // when
        String newDescription = RandomUtils.fast().getString(User.MAX_LEN_DESCRIPTION, 'a', 'z');
        userDAO.updateDescription(userIn.getId(), newDescription);

        // then
        assertEquals(newDescription, userDAO.getById(userIn.getId()).getDescription());
    }


    @Test
    public void updateEmailVerified() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        assertFalse(userDAO.getById(user.getId()).isEmailVerified());

        // when/then
        userDAO.updateEmailVerified(user.getId(), true);
        assertTrue(userDAO.getById(user.getId()).isEmailVerified());

        // when/then
        userDAO.updateEmailVerified(user.getId(), false);
        assertFalse(userDAO.getById(user.getId()).isEmailVerified());
    }


}

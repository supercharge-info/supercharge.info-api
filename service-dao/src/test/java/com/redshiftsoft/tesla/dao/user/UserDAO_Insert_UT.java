package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserDAO_Insert_UT {

    @Resource
    private UserDAO userDAO;

    @Test
    public void insert() {
        User userIn1 = TestUsers.createUser();
        User userIn2 = TestUsers.createUser();
        userDAO.insert(userIn1);
        userDAO.insert(userIn2);
        assertNotEquals(userIn1.getId(), userIn2.getId());

        // then
        User userOut1 = userDAO.getById(userIn1.getId());
        User userOut2 = userDAO.getById(userIn2.getId());

        // then -- equal 
        assertUserEquals(userIn1, userOut1);
        assertUserEquals(userIn2, userOut2);

        // then -- default emailVerified = false
        assertFalse(userIn1.isEmailVerified());
        assertFalse(userOut1.isEmailVerified());
    }

    private static void assertUserEquals(User userIn, User userOut) {
        assertEquals(userIn, userOut);
    }

    @Test
    public void insert_duplicateUsername_shouldFail() {
        // given
        User userIn1 = TestUsers.createUser();
        userDAO.insert(userIn1);
        // when
        User userIn2 = TestUsers.createUser();
        userIn2.setUsername(userIn1.getUsername());
        // then -- same case -- should fail
        try {
            userDAO.insert(userIn2);
            fail("fail");
        } catch (DuplicateKeyException e) {
        }
    }

    @Test
    public void insert_duplicateUsernameDiffCase_shouldFail() {
        // given
        User userIn1 = TestUsers.createUser();
        userDAO.insert(userIn1);
        // when
        User userIn2 = TestUsers.createUser();
        userIn2.setUsername(userIn1.getUsername().toLowerCase());
        if (userIn1.getUsername().equals(userIn2.getUsername())) {
            userIn2.setUsername(userIn1.getUsername().toUpperCase());
        }
        // then -- different case -- should fail
        try {
            userDAO.insert(userIn2);
            fail("fail");
        } catch (DuplicateKeyException e) {
        }
    }

    @Test
    public void insert_duplicateEmail_shouldFail() {
        // given
        User userIn1 = TestUsers.createUser();
        userDAO.insert(userIn1);
        // when
        User userIn2 = TestUsers.createUser();
        userIn2.setEmail(userIn1.getEmail());
        // then -- same case -- should fail
        try {
            userDAO.insert(userIn2);
            fail("fail");
        } catch (DuplicateKeyException e) {
        }
    }

    @Test
    public void insert_duplicateEmailDiffCase_shouldFail() {
        // given
        User userIn1 = TestUsers.createUser();
        userDAO.insert(userIn1);
        // when
        User userIn2 = TestUsers.createUser();
        userIn2.setEmail(userIn1.getEmail().toLowerCase());
        assertNotEquals(userIn1.getEmail(), userIn2.getEmail());
        // then -- different case -- should fail
        try {
            userDAO.insert(userIn2);
            fail("fail");
        } catch (DuplicateKeyException e) {
        }
    }


}

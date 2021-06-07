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

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserDAO_Exists_UT {

    private static final RandomUtils randomUtils = RandomUtils.fast();

    @Resource
    private UserDAO userDAO;

    @Test
    public void existsId() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);
        // then
        assertFalse(userDAO.existsId(randomUtils.getInteger()));
        assertTrue(userDAO.existsId(userIn.getId()));
    }

    @Test
    public void existsUsername() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);
        // then -- false
        assertFalse(userDAO.existsUsername(randomUtils.getString(30, 'a', 'z')));
        // then -- true
        assertTrue(userDAO.existsUsername(userIn.getUsername()));
        assertTrue(userDAO.existsUsername(userIn.getUsername().toLowerCase()));
        assertTrue(userDAO.existsUsername(userIn.getUsername().toUpperCase()));
        assertTrue(userDAO.existsUsername(randomUtils.mixCase(userIn.getUsername())));
    }

    @Test
    public void existsEmail() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);
        // then -- false
        assertFalse(userDAO.existsEmail(randomUtils.getString(30, 'a', 'z')));
        // then -- true
        assertTrue(userDAO.existsEmail(userIn.getEmail()));
        assertTrue(userDAO.existsEmail(userIn.getEmail().toLowerCase()));
        assertTrue(userDAO.existsEmail(userIn.getEmail().toUpperCase()));
        assertTrue(userDAO.existsEmail(randomUtils.mixCase(userIn.getEmail())));
    }

}

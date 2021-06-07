package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserDAO_Get_UT {

    private static final RandomUtils randomUtils = RandomUtils.fast();

    @Resource
    private UserDAO userDAO;

    @Test
    public void getByUsername() {
        // given
        User userIn = TestUsers.createUser();
        String username = userIn.getUsername();
        userDAO.insert(userIn);
        // when
        User userOut = userDAO.getByUsername(username);
        // then
        assertUserEquals(userIn, userOut);
        assertTrue(System.currentTimeMillis() - userOut.getCreationDate().toEpochMilli() < 1000);
        // then -- get by mixed case
        assertUserEquals(userIn, userDAO.getByUsername(randomUtils.mixCase(username)));
    }

    @Test
    public void getByEmail() {
        // given
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);
        String email = userIn.getEmail();
        // when
        User userOut = userDAO.getByEmail(email);
        // then
        assertUserEquals(userIn, userOut);
        assertTrue(System.currentTimeMillis() - userOut.getCreationDate().toEpochMilli() < 1000);
        // then -- mixed case
        assertUserEquals(userIn, userDAO.getByEmail(randomUtils.mixCase(email)));
    }

    @Test
    public void getById() {
        User userIn = TestUsers.createUser();
        userDAO.insert(userIn);
        User userOut = userDAO.getById(userIn.getId());
        assertUserEquals(userIn, userOut);
        assertTrue(System.currentTimeMillis() - userOut.getCreationDate().toEpochMilli() < 1000);
    }

    @Test
    public void getById_throwsForNonExistingId() {
        assertThrows(EmptyResultDataAccessException.class, () -> {
            userDAO.getById(-435346456);
        });
    }

    private static void assertUserEquals(User userIn, User userOut) {
        assertEquals(userIn, userOut);
    }

}
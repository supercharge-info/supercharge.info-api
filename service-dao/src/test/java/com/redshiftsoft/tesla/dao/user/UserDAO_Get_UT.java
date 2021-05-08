package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import kdw.common.math.RandomUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
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

    @Test(expected = EmptyResultDataAccessException.class)
    public void getById_throwsForNonExistingId() {
        userDAO.getById(-435346456);
    }

    private static void assertUserEquals(User userIn, User userOut) {
        assertEquals(userIn, userOut);
    }

}
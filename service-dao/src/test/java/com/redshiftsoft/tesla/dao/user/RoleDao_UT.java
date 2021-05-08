package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.Collections;

import static org.junit.Assert.assertEquals;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class RoleDao_UT {

    @Resource
    private UserDAO userDAO;
    @Resource
    private RoleDao roleDao;

    @Test
    public void loadRoles() {
        // given
        User user = TestUsers.createUser();
        user.setRoles(Arrays.asList("admin", "editor"));
        userDAO.insert(user);

        // when/then
        assertEquals(Arrays.asList("admin", "editor"), roleDao.loadRoles(user.getId()));
    }

    @Test
    public void loadRoles_none() {
        // given
        User user = TestUsers.createUser();
        user.setRoles(Collections.emptyList());
        userDAO.insert(user);

        // when/then
        assertEquals(Collections.emptyList(), roleDao.loadRoles(user.getId()));
    }

    @Test
    public void insert() {
        // given
        User user = TestUsers.createUser();
        user.setRoles(Collections.emptyList());
        userDAO.insert(user);

        // when
        roleDao.insert(user.getId(), Arrays.asList("editor", "feature"));

        // then
        assertEquals(Arrays.asList("editor", "feature"), roleDao.loadRoles(user.getId()));
    }

}
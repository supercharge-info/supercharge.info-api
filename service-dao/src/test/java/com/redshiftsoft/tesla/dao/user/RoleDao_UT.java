package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.Collections;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Transactional
@ExtendWith(SpringExtension.class)
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
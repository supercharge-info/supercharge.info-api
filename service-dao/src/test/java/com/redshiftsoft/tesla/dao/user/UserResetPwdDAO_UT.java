package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.TestUsers;
import kdw.common.math.RandomUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Optional;

import static org.junit.Assert.*;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/com/redshiftsoft/tesla/dao-context.xml"})
public class UserResetPwdDAO_UT {

    @Resource
    private UserResetPwdDAO userResetPwdDAO;
    @Resource
    private UserDAO userDAO;
    @Resource
    private JdbcTemplate template;

    @Test
    public void insertKey_validateKey_markUsed() {
        /* Generate user */
        User user = TestUsers.createUser();
        userDAO.insert(user);

        /* Insert key */
        String key = userResetPwdDAO.insertKey(user.getId());
        assertTrue(key.length() >= UserResetPwdDAO.RESET_KEY_MIN_LENGTH);
        assertTrue(key.length() <= UserResetPwdDAO.RESET_KEY_MAX_LENGTH);

        /* Now test getting */
        Optional<Integer> userID = userResetPwdDAO.validateKey(key);
        assertTrue(userID.isPresent());
        assertEquals(userID.get(), user.getId());

        /* Can get a second time if not yet marked used. */
        userID = userResetPwdDAO.validateKey(key);
        assertTrue(userID.isPresent());
        assertEquals(userID.get(), user.getId());

        /* Mark used */
        userResetPwdDAO.markUsed(user.getId());
        userID = userResetPwdDAO.validateKey(key);
        assertFalse(userID.isPresent());
    }

    @Test
    public void validateKey_random() {
        Optional<Integer> userID = userResetPwdDAO.validateKey(RandomUtils.fast().getString(12, 'a', 'z'));
        assertFalse(userID.isPresent());
    }

    @Test
    public void delete() {
        // given nothing older than 14 days in database
        /* Generate user */
        User user = TestUsers.createUser();
        userDAO.insert(user);
        userResetPwdDAO.deleteOld(14);
        int count2 = userResetPwdDAO.deleteOld(14);
        assertEquals(0, count2);

        // given -- an old entry or two
        template.update("insert into user_reset_password values(?,?,'2016-01-01',null)", user.getId(), "abcd123456789a");
        template.update("insert into user_reset_password values(?,?,'2017-01-01',null)", user.getId(), "abcd123456789b");
        template.update("insert into user_reset_password values(?,?,'2018-01-01',null)", user.getId(), "abcd123456789c");

        // when
        int count3 = userResetPwdDAO.deleteOld(14);

        // then
        assertEquals(3, count3);

    }
}

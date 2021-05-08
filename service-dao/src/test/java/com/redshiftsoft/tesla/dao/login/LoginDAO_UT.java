package com.redshiftsoft.tesla.dao.login;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import kdw.common.math.RandomUtils;
import kdw.common.thread.ThreadUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.*;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class LoginDAO_UT {

    private User user;

    @Resource
    private LoginDAO loginDAO;
    @Resource
    private UserDAO userDAO;

    @Before
    public void setUp() {
        user = TestUsers.createUser();
        userDAO.insert(user);
    }

    @Test
    public void insertAttempt_canInsertAllPossibleLocale() {
        List<Locale> locales = Lists.newArrayList(
                Locale.forLanguageTag("en_US"),
                Locale.forLanguageTag("en_ES"),
                Locale.forLanguageTag("pl_PL"),
                Locale.forLanguageTag("pl"),
                Locale.forLanguageTag("de"),
                Locale.forLanguageTag("fr_CA")
        );
        for (Locale localeIn : locales) {
            String ipIn = RandomUtils.fast().getString(1, 20, 'a', 'z');
            LoginAttempt attemptIn = new LoginAttempt(user, LoginResult.SUCCESS, LoginType.FORM, ipIn, localeIn);
            loginDAO.insertAttempt(attemptIn);
            ThreadUtils.sleep(20);
            // then
            LoginAttempt attemptOut = loginDAO.getAttempts(user.getId(), 1).get(0);
            assertEquals(ipIn, attemptOut.getRemoteIP());
            assertEquals(attemptIn.getLocale(), attemptOut.getLocale());
        }
    }

    @Test
    public void insertAttempt_canInsertAllPossibleResults() {
        for (LoginResult result : LoginResult.values()) {
            String ipIn = RandomUtils.fast().getString(1, 20, 'a', 'z');
            LoginAttempt attemptIn = new LoginAttempt(user, result, LoginType.FORM, ipIn, Locale.getDefault());
            loginDAO.insertAttempt(attemptIn);
            ThreadUtils.sleep(20);
            // then
            LoginAttempt attemptOut = loginDAO.getAttempts(user.getId(), 1).get(0);
            assertEquals(ipIn, attemptOut.getRemoteIP());
            assertEquals(attemptIn.getResult(), attemptOut.getResult());
        }
    }

    @Test
    public void insertAttempt_canInsertAllPossibleTypes() {
        for (LoginType result : LoginType.values()) {
            String ipIn = RandomUtils.fast().getString(1, 20, 'a', 'z');
            LoginAttempt attemptIn = new LoginAttempt(user, LoginResult.SUCCESS, result, ipIn, Locale.getDefault());
            loginDAO.insertAttempt(attemptIn);
            ThreadUtils.sleep(20);
            // then
            LoginAttempt attemptOut = loginDAO.getAttempts(user.getId(), 1).get(0);
            assertEquals(ipIn, attemptOut.getRemoteIP());
            assertEquals(attemptIn.getType(), attemptOut.getType());
        }
    }

    @Test
    public void insertAttempt_nullLocale() {
        LoginAttempt a = new LoginAttempt(user, LoginResult.SUCCESS, LoginType.FORM, "null.locale", null);
        loginDAO.insertAttempt(a);
        LoginAttempt attemptOut = loginDAO.getAttempts(user.getId(), 1).get(0);
        assertNull(attemptOut.getLocale());
    }

    @Test
    public void delete() {
        LoginAttempt attempt = new LoginAttempt(user, LoginResult.INVALID_CREDENTIALS, LoginType.FORM,
                "test", Locale.getDefault());
        loginDAO.insertAttempt(attempt);

        int count = loginDAO.getInvalidLoginCount(user.getId(), 10);
        assertTrue(count > 0);

        loginDAO.delete(user.getId());

        count = loginDAO.getInvalidLoginCount(user.getId(), 10);
        assertEquals(0, count);
    }

    @Test
    public void getInvalidLoginCount() {

		/* First delete all existing login attempts */
        loginDAO.delete(user.getId());

		/* Next insert some invalid attempts */
        LoginResult[] a = {LoginResult.SUCCESS, LoginResult.DISABLED, LoginResult.INVALID_CREDENTIALS,
                LoginResult.INVALID_CREDENTIALS, LoginResult.LOCKED, LoginResult.INVALID_CREDENTIALS};

        for (LoginResult result : a) {
            LoginAttempt attempt = new LoginAttempt(user, result, LoginType.FORM, "test_ip", Locale.getDefault());
            loginDAO.insertAttempt(attempt);
        }

		/* Verify count is as expected */
        int count = loginDAO.getInvalidLoginCount(user.getId(), 1);
        assertEquals(5, count);

    }

    @Test
    public void getAttempts_returnsOnlySpecifiedCount() {
        for (int i = 1; i < 10; i++) {
            LoginAttempt attempt = new LoginAttempt(user, LoginResult.SUCCESS, LoginType.FORM, "ip", Locale.getDefault());
            loginDAO.insertAttempt(attempt);
        }
        List<LoginAttempt> list = loginDAO.getAttempts(user.getId(), 3);
        assertEquals(3, list.size());
    }

    @Test
    public void deleteOld() {
        loginDAO.deleteOld(12);
    }

}
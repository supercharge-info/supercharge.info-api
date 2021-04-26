package com.redshiftsoft.tesla.web.mvc.user.validation;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;

public class UsernameValidation_UT {

    private final UserDAO userDAO = mock(UserDAO.class);

    private final UsernameValidation v = new UsernameValidation(userDAO);

    @Test
    public void usernameShort() {
        // given
        List<String> errors = Lists.newArrayList();
        // when
        v.validate("sa", errors);
        // then
        assertEquals(1, errors.size());
        assertEquals("username must be at least 3 characters", errors.get(0));
    }

    @Test
    public void usernameInvalidChars() {
        // given
        List<String> errors = Lists.newArrayList();
        // when
        v.validate("s<><>a", errors);
        // then
        assertEquals(1, errors.size());
        assertEquals("invalid characters in username", errors.get(0));
    }

    @Test
    public void nullUsername() {
        // given
        List<String> errors = Lists.newArrayList();
        // when
        v.validate(null, errors);
        // then
        assertEquals(1, errors.size());
        assertEquals("username must be at least 3 characters", errors.get(0));
    }

    @Test
    public void good() {
        assertTrue(v.validate("someone@somwhere.com").isEmpty());
        assertTrue(v.validate("a+b+c").isEmpty());
        assertTrue(v.validate("aaa-bbb").isEmpty());
        assertTrue(v.validate("-bbb").isEmpty());
        assertTrue(v.validate("-bbb-").isEmpty());
        assertTrue(v.validate("-----").isEmpty());
    }

    @Test
    public void bad() {
        assertFalse(v.validate("middle space").isEmpty());
        assertFalse(v.validate(" headSpace").isEmpty());
        assertFalse(v.validate("tailSpace ").isEmpty());
        assertFalse(v.validate("amper&").isEmpty());
    }

}
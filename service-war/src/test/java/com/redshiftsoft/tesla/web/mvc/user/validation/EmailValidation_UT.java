package com.redshiftsoft.tesla.web.mvc.user.validation;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;

public class EmailValidation_UT {

    private final UserDAO userDAO = mock(UserDAO.class);

    private final EmailValidation v = new EmailValidation(userDAO);

    @Test
    public void good() {
        // when
        List<String> errors = Lists.newArrayList();

        // when
        v.validate("a@a.com", errors);
        v.validate("a_b@a.com", errors);
        v.validate("aa_bb@a.com", errors);
        v.validate("aa-bb@a.com", errors);
        v.validate("aa.bb@a.com", errors);
        v.validate("aa.bb.cc@a.com", errors);

        // then
        assertTrue(errors.isEmpty());
    }


    @Test
    public void bad() {
        // when
        List<String> errors = Lists.newArrayList();
        v.validate("badEmail", errors);

        assertEquals(1, errors.size());
        assertEquals("invalid email address", errors.get(0));
    }

    @Test
    public void nullEmail() {
        // when
        List<String> errors = Lists.newArrayList();
        v.validate(null, errors);

        assertEquals(1, errors.size());
        assertEquals("email is required", errors.get(0));

    }


}
package com.redshiftsoft.tesla.web.mvc.user;

import com.redshiftsoft.tesla.dao.login.LoginDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserConfigDAO;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.user.email.UserCreateEmailSender;
import com.redshiftsoft.tesla.web.mvc.user.validation.EmailValidation;
import com.redshiftsoft.tesla.web.mvc.user.validation.PasswordValidation;
import com.redshiftsoft.tesla.web.mvc.user.validation.UsernameValidation;
import kdw.common.secure.passwordhashing.PasswordHashLogic;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class UserCreateController_UT {

    private final UserDAO userDAO = mock(UserDAO.class);
    private final UserConfigDAO userConfigDAO = mock(UserConfigDAO.class);
    private final PasswordHashLogic loginHashLogic = new PasswordHashLogic();
    private final LoginDAO loginDAO = mock(LoginDAO.class);
    private final MockHttpServletResponse mockResponse = new MockHttpServletResponse();
    private final MockHttpServletRequest mockRequest = new MockHttpServletRequest();
    private final UsernameValidation usernameValidation = mock(UsernameValidation.class);
    private final PasswordValidation passwordValidation = mock(PasswordValidation.class);
    private final EmailValidation emailValidation = mock(EmailValidation.class);
    private final UserCreateEmailSender emailSender = mock(UserCreateEmailSender.class);

    private final UserCreateController createController =
            new UserCreateController(loginHashLogic, userDAO, userConfigDAO, loginDAO, usernameValidation,
                    passwordValidation, emailValidation, emailSender);

    @Test
    public void good() {
        // given
        User user = createTestUser();
        when(userDAO.getById(null)).thenReturn(user);

        // when
        JsonResponse response = createController.create(mockRequest, mockResponse, new UserCreateDTO("username", "asdfasdf@somedomain.com", "password", "MI"));

        // then
        assertEquals(JsonResponse.Result.SUCCESS, response.getResult());
    }

    private User createTestUser() {
        User user = new User();
        user.setId(-1);
        user.setPasswordHash("ABCD");
        return user;
    }

}
package com.redshiftsoft.tesla.web.mvc.user;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.login.LoginDAO;
import com.redshiftsoft.tesla.dao.user.*;
import com.redshiftsoft.tesla.web.filter.CookieHelper;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.user.email.UserCreateEmailSender;
import com.redshiftsoft.tesla.web.mvc.user.validation.EmailValidation;
import com.redshiftsoft.tesla.web.mvc.user.validation.PasswordValidation;
import com.redshiftsoft.tesla.web.mvc.user.validation.UsernameValidation;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginAttemptFactory;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;
import com.redshiftsoft.util.PasswordHashLogic;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Logger;

import static org.apache.http.HttpStatus.SC_BAD_REQUEST;
import static org.apache.http.HttpStatus.SC_INTERNAL_SERVER_ERROR;

@Controller
@RequestMapping("/user")
public class UserCreateController {

    private static final Logger LOG = Logger.getLogger(UserCreateController.class.getName());

    public UserCreateController() {
    }

    /* constructor for testing */
    protected UserCreateController(PasswordHashLogic hashLogic, UserDAO userDAO, UserConfigDAO userConfigDao,
                                   LoginDAO loginDAO, UsernameValidation usernameValidation,
                                   PasswordValidation passwordValidation, EmailValidation emailValidation,
                                   UserCreateEmailSender emailSender) {
        this.hashLogic = hashLogic;
        this.userDAO = userDAO;
        this.userConfigDao = userConfigDao;
        this.loginDAO = loginDAO;
        this.emailValidation = emailValidation;
        this.passwordValidation = passwordValidation;
        this.usernameValidation = usernameValidation;
        this.emailSender = emailSender;
    }

    @Resource(name = "loginPasswordHashLogic")
    private PasswordHashLogic hashLogic;
    @Resource
    private UserDAO userDAO;
    @Resource
    private UserConfigDAO userConfigDao;
    @Resource
    private LoginDAO loginDAO;
    @Resource
    private UsernameValidation usernameValidation;
    @Resource
    private EmailValidation emailValidation;
    @Resource
    private PasswordValidation passwordValidation;
    @Resource
    private UserCreateEmailSender emailSender;

    @Transactional
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public JsonResponse create(HttpServletRequest request,
                               HttpServletResponse response,
                               @RequestBody UserCreateDTO userCreateDTO) {

        LOG.info("userCreateDTO=" + userCreateDTO);
        String username = userCreateDTO.getUsername();
        String email = userCreateDTO.getEmail();
        String password = userCreateDTO.getPassword();
        try {
            List<String> errors = Lists.newArrayList();
            usernameValidation.validate(username, errors);
            emailValidation.validate(email, errors);
            passwordValidation.validate(password, username, errors);
            if (!errors.isEmpty()) {
                return JsonResponse.fail(errors).withStatus(response, SC_BAD_REQUEST);
            }

            String passwordSalt = hashLogic.generateNewSalt();

            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setPasswordSalt(passwordSalt);
            user.setPasswordHash(hashLogic.hash(password, passwordSalt));
            userDAO.insert(user);
            userConfigDao.insert(user.getId(), UserConfig.create(Unit.fromString(userCreateDTO.getUnit())));

            /*
             *  Reload the user from DB before creating cookie and hash from it so we use exact values we will use in future.
             */
            user = userDAO.getById(user.getId());
            CookieHelper.addCookie(request, response, LoginCookie.fromUser(user));
            loginDAO.insertAttempt(LoginAttemptFactory.successAccountCreated(request, user));

            emailSender.send(user);

            return JsonResponse.success("Success");
        } catch (Exception e) {
            return JsonResponse.error(e).withStatus(response, SC_INTERNAL_SERVER_ERROR);
        }
    }

}

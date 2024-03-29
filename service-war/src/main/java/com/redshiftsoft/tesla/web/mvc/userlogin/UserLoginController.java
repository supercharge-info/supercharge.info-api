package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.redshiftsoft.tesla.dao.login.LoginAttempt;
import com.redshiftsoft.tesla.dao.login.LoginDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.filter.CookieHelper;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.forum.ForumClient;
import com.redshiftsoft.util.PasswordHashLogic;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Optional;
import java.util.logging.Logger;

import static com.redshiftsoft.tesla.web.mvc.userlogin.LoginAttemptFactory.*;
import static com.redshiftsoft.util.StringTools.isEmpty;
import static org.apache.http.HttpStatus.SC_UNAUTHORIZED;

@Controller
@RequestMapping("/login")
public class UserLoginController {

    public static final int INVALID_LOGINS_MAX_COUNT = 8;
    public static final int INVALID_LOGINS_PERIOD_MINUTES = 3;

    private static final Logger LOG = Logger.getLogger(UserLoginController.class.getName());

    @Resource(name = "loginPasswordHashLogic")
    private PasswordHashLogic hashLogic;
    @Resource
    private UserDAO userDAO;
    @Resource
    private LoginDAO loginDAO;
    @Resource
    private ForumClient forumClient;

    /**
     * Login
     */
    @Transactional
    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody
    public UserLoginResponse login(HttpServletRequest request, HttpServletResponse response,
                                   @RequestParam(required = false) String username,
                                   @RequestParam(required = false) String password) {

        LOG.info("login username=" + username);

        if (isEmpty(username)) {
            return UserLoginResponse.fail("username required").withStatus(response, SC_UNAUTHORIZED);
        }
        if (isEmpty(password)) {
            return UserLoginResponse.fail("password required").withStatus(response, SC_UNAUTHORIZED);
        }
        username = username.trim();
        if (!userDAO.existsUsername(username)) {
            return UserLoginResponse.fail("user does not exist").withStatus(response, SC_UNAUTHORIZED);
        }
        User user = userDAO.getByUsername(username);
        if (loginDAO.getInvalidLoginCount(user.getId(), INVALID_LOGINS_PERIOD_MINUTES) >= INVALID_LOGINS_MAX_COUNT) {
            loginDAO.insertAttempt(locked(request, user));
            return UserLoginResponse.fail(String.format("Account is temporarily locked, try again in %d minutes.", INVALID_LOGINS_PERIOD_MINUTES))
                    .withStatus(response, SC_UNAUTHORIZED);
        }
        if (!hashLogic.check(password, user.getPasswordHash(), user.getPasswordSalt())) {
            loginDAO.insertAttempt(badCredentials(request, user));
            return UserLoginResponse.fail("invalid password").withStatus(response, SC_UNAUTHORIZED);
        }
        LOG.info("login SUCCESS username=" + username);
        loginDAO.insertAttempt(successForm(request, user));
        CookieHelper.addCookie(request, response, LoginCookie.from(user));
        return UserLoginResponse.success(user);
    }

    /**
     * Used by javascript to see if the user has valid cookie.
     */
    @RequestMapping(method = RequestMethod.GET, value = "/check")
    @ResponseBody
    public UserLoginResponse loginCheck() {
        Optional<User> userOption = Security.userOption();
        if (userOption.isPresent()) {
            LOG.info("loginCheck success " + userOption.get());
            return UserLoginResponse.success(userOption.get());
        }
        LOG.info("loginCheck fail");
        return UserLoginResponse.fail();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/out")
    public void logout(HttpServletResponse response) {
        LOG.info("logout");
        CookieHelper.removeCookie(response, LoginCookie.NAME);
        Optional<User> userOption = Security.userOption();
        if (userOption.isPresent() && userOption.get().isEmailVerified()) {
            forumClient.logout(userOption.get().getId());
        }
    }
}

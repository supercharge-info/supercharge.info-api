package com.redshiftsoft.tesla.web.mvc.user;

import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.login.LoginDAO;
import com.redshiftsoft.tesla.dao.user.ResetPwdResult;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.dao.user.UserResetPwdDAO;
import com.redshiftsoft.tesla.web.filter.CookieHelper;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.RedirectURLBuilder;
import com.redshiftsoft.tesla.web.mvc.user.email.PasswordResetEmailSender;
import com.redshiftsoft.tesla.web.mvc.user.validation.PasswordValidation;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginAttemptFactory;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;
import com.redshiftsoft.util.PasswordHashLogic;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

import static org.apache.http.HttpStatus.SC_BAD_REQUEST;

@Controller
@RequestMapping("/password")
public class PasswordController {

    private static final Logger LOG = Logger.getLogger(PasswordController.class.getName());

    @Resource
    private UserDAO userDAO;
    @Resource
    private UserResetPwdDAO userResetPwdDAO;
    @Resource
    private LoginDAO loginDAO;
    @Resource
    private PasswordHashLogic passwordHashLogic;
    @Resource
    private PasswordValidation passwordValidation;
    @Resource
    private PasswordResetEmailSender emailSender;
    @Resource(name = "userFilterCache")
    private LoadingCache<String, User> cache;


    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "/change", method = RequestMethod.POST)
    @ResponseBody
    public JsonResponse change(HttpServletRequest request,
                               HttpServletResponse response,
                               @RequestParam(required = false) String password) {
        User user = Security.user();
        List<String> errors = passwordValidation.validate(password, user.getUsername());
        if (!errors.isEmpty()) {
            return JsonResponse.fail(errors).withStatus(response, SC_BAD_REQUEST);
        }

        user.setPasswordHash(passwordHashLogic.hash(password, user.getPasswordSalt()));
        userDAO.updatePasswordHash(user.getId(), user.getPasswordHash());
        LOG.info("password SUCCESS username=" + user.getUsername());
        loginDAO.insertAttempt(LoginAttemptFactory.changedPassword(request, user));

        // Invalidate old cookies
        List<String> invalidCookies = cache.asMap().keySet()
            .stream()
            .filter(c -> user.getId().equals(LoginCookie.getUserId(c)))
            .collect(Collectors.toList());
        cache.invalidateAll(invalidCookies);
        CookieHelper.addCookie(request, response, LoginCookie.from(user));

        return JsonResponse.success();
    }

    @Transactional
    @RequestMapping("/reset")
    @ResponseBody
    public JsonResponse reset(@RequestParam(value = "username", required = false) String username,
                              @RequestParam(value = "email", required = false) String emailAddress,
                              HttpServletResponse response) {

        User user;
        if (userDAO.existsUsername(username)) {
            user = userDAO.getByUsername(username);
        } else if (userDAO.existsEmail(emailAddress)) {
            user = userDAO.getByEmail(emailAddress);
        } else {
            String error = "Could not find existing account with specified username/email";
            return JsonResponse.fail(error).withStatus(response, SC_BAD_REQUEST);
        }

        emailSender.send(user);

        return JsonResponse.success();
    }

    @Transactional
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public void loginUsingResetKey(HttpServletRequest request,
                                   HttpServletResponse response,
                                   @RequestParam String key)
            throws IOException {

        ResetPwdResult resetResult = userResetPwdDAO.validateKey(key);
        if (resetResult == null) {
            response.sendError(400, "This verification link is invalid.");
        } else if (resetResult.isUsed()) {
            response.sendError(400, "This verification link has already been used.");
        } else if (resetResult.isExpired()) {
            response.sendError(400, "This verification link has expired.");
        } else {
            userResetPwdDAO.markUsed(resetResult.getUserId());
            User user = userDAO.getById(resetResult.getUserId());

            LOG.info("login SUCCESS username=" + user.getUsername());
            loginDAO.insertAttempt(LoginAttemptFactory.successResetPassword(request, user));
            CookieHelper.addCookie(request, response, LoginCookie.from(user));
            response.sendRedirect(RedirectURLBuilder.buildURL(request));
        }
    }


}

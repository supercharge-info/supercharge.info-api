package com.redshiftsoft.tesla.web.mvc.user;

import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.dao.user.UserResetPwdDAO;
import com.redshiftsoft.tesla.web.filter.CookieHelper;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.RedirectURLBuilder;
import com.redshiftsoft.tesla.web.mvc.user.email.UserEditEmailSender;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
@RequestMapping("email-verification")
public class EmailVerificationController {

    @Resource
    private UserEditEmailSender userEditEmailSender;
    @Resource
    private UserResetPwdDAO userResetPwdDAO;
    @Resource
    private UserDAO userDAO;
    @Resource(name = "userFilterCache")
    private LoadingCache<String, User> cache;

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "/verify", method = RequestMethod.GET)
    public String verifyEmail(HttpServletRequest request,
                              @RequestParam(value = "key") String key) {
        User user = Security.user();
        Optional<Integer> userIdOption = userResetPwdDAO.validateKey(key);
        if (userIdOption.isPresent()) {
            userDAO.updateEmailVerified(user.getId(), true);
            userResetPwdDAO.markUsed(user.getId());
            /* The cached 'User' is now stale. */
            cache.refresh(CookieHelper.getCookie(request, LoginCookie.NAME).getValue());
        }
        return RedirectURLBuilder.build(request);
    }

    @Transactional
    @RequestMapping(value = "/send", method = RequestMethod.GET)
    @ResponseBody
    public JsonResponse verifyEmailSend() {
        userEditEmailSender.send(Security.user());
        return JsonResponse.success();
    }
}

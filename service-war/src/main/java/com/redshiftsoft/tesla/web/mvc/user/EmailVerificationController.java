package com.redshiftsoft.tesla.web.mvc.user;

import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.dao.user.UserResetPwdDAO;
import com.redshiftsoft.tesla.web.ThreadScope;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.RedirectURLBuilder;
import com.redshiftsoft.tesla.web.mvc.user.email.UserEditEmailSender;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
@RequestMapping("email-verification")
public class EmailVerificationController {

    private final UserEditEmailSender userEditEmailSender;
    private final UserResetPwdDAO userResetPwdDAO;
    private final UserDAO userDAO;
    private final LoadingCache<String, User> userCache;

    public EmailVerificationController(UserEditEmailSender userEditEmailSender,
                                       UserResetPwdDAO userResetPwdDAO,
                                       UserDAO userDAO,
                                       @Qualifier("userFilterCache") LoadingCache<String, User> userCache) {
        this.userEditEmailSender = userEditEmailSender;
        this.userResetPwdDAO = userResetPwdDAO;
        this.userDAO = userDAO;
        this.userCache = userCache;
    }

    @Transactional
    @RequestMapping(value = "/verify", method = {RequestMethod.GET})
    public String verifyEmail(HttpServletRequest request,
                              @RequestParam(value = "key") String key) {
        User user = ThreadScope.getUser();
        Optional<Integer> userIdOption = userResetPwdDAO.validateKey(key);
        if (userIdOption.isPresent()) {
            userDAO.updateEmailVerified(user.getId(), true);
            userResetPwdDAO.markUsed(user.getId());
            /* The cached user is now stale. */
            userCache.invalidateAll();
        }
        return RedirectURLBuilder.build(request);
    }

    @Transactional
    @RequestMapping(value = "/send", method = {RequestMethod.GET})
    @ResponseBody
    public JsonResponse verifyEmailSend() {
        userEditEmailSender.send(ThreadScope.getUser());
        return JsonResponse.success();
    }
}

package com.redshiftsoft.tesla.web.mvc.user;

import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.ResetPwdResult;
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
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

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

    @Transactional
    @RequestMapping(value = "/verify", method = RequestMethod.GET)
    public void verifyEmail(HttpServletRequest request,
                            HttpServletResponse response,
                            @RequestParam String key)
            throws IOException {
        ResetPwdResult verifyResult = userResetPwdDAO.validateKey(key);
        if (verifyResult == null) {
            response.sendError(400, "This login link is invalid.");
        } else if (verifyResult.isUsed()) {
            response.sendError(400, "This login link has already been used.");
        } else if (verifyResult.isExpired()) {
            response.sendError(400, "This login link has expired.");
        } else {
            userDAO.updateEmailVerified(verifyResult.getUserId(), true);
            userResetPwdDAO.markUsed(verifyResult.getUserId());

            // The cached 'User' is now stale; invalidate any old cookies
            List<String> invalidCookies = cache.asMap().keySet()
                .stream()
                .filter(c -> verifyResult.getUserId().equals(LoginCookie.getUserId(c)))
                .collect(Collectors.toList());
            cache.invalidateAll(invalidCookies);
            response.sendRedirect(RedirectURLBuilder.buildURL(request));
        }
    }

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "/send", method = RequestMethod.GET)
    @ResponseBody
    public JsonResponse verifyEmailSend() {
        userEditEmailSender.send(Security.user());
        return JsonResponse.success();
    }
}

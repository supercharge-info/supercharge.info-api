package com.redshiftsoft.tesla.web.mvc.user;


import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.filter.CookieHelper;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.tesla.web.mvc.user.validation.EmailValidation;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;
import com.redshiftsoft.util.StringTools;
import org.springframework.security.access.prepost.PreAuthorize;
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

import static org.apache.http.HttpStatus.SC_BAD_REQUEST;

@Controller
@RequestMapping("/user")
public class UserEditController {

    @Resource
    private EmailValidation emailValidation;
    @Resource
    private UserDAO userDAO;
    @Resource(name = "userFilterCache")
    private LoadingCache<String, User> cache;


    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JsonResponse edit(HttpServletRequest request,
                             HttpServletResponse response,
                             @RequestBody UserEditDTO userEditDTO) {

        User user = Security.user();

        /* if the email is equal in all but case, is ok, let user change case, skip validation. */
        if (!StringTools.equalsIgnoreCase(user.getEmail(), userEditDTO.getEmail())) {
            List<String> errors = emailValidation.validate(userEditDTO.getEmail());
            if (!errors.isEmpty()) {
                return JsonResponse.fail(errors).withStatus(response, SC_BAD_REQUEST);
            }
        }

        /* Update DB only after both validations pass. */
        userDAO.updateEmail(user.getId(), userEditDTO.getEmail());
        userDAO.updateDescription(user.getId(), userEditDTO.getDescription());

        /* If email changed it is no longer verified */
        if (!StringTools.equalsIgnoreCase(user.getEmail(), userEditDTO.getEmail())) {
            userDAO.updateEmailVerified(user.getId(), false);
        }

        /* The cached 'User' is now stale. */
        cache.refresh(CookieHelper.getCookie(request, LoginCookie.NAME).getValue());

        return JsonResponse.success();
    }

}

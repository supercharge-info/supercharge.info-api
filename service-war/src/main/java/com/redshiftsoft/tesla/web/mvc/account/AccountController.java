package com.redshiftsoft.tesla.web.mvc.account;

import com.redshiftsoft.tesla.dao.login.LoginAttempt;
import com.redshiftsoft.tesla.dao.login.LoginDAO;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChangeDAO;
import com.redshiftsoft.tesla.dao.stats.StatsDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.site.AddressDTOFunctions;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/account")
public class AccountController {

    private static final Logger LOG = Logger.getLogger(AccountController.class.getName());

    @Resource
    private SiteChangeDAO siteChangeDAO;
    @Resource
    private StatsDAO statsDAO;
    @Resource
    private LoginDAO loginDAO;

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(method = RequestMethod.GET, value = "/stats")
    @ResponseBody
    public StatisticsResultsResponse getStatisticsResults() {
        User user = Security.user();
        StatisticsResultsResponse response = new StatisticsResultsResponse();

        List<LoginAttempt> attemptsList = loginDAO.getAttempts(user.getId(), 10);
        response.setAttempts(attemptsList.stream()
            .map(new LoginAttemptDTOFunction()).collect(Collectors.toList()));

        response.setLogins(statsDAO.getYtdLogins(user.getId()));
        if (user.hasRole("editor")) {
            response.setEdits(statsDAO.getYtdEdits(user.getId()));
            response.setAdditions(statsDAO.getYtdAdditions(user.getId()));
        }
        return response;
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/edits")
    @ResponseBody
    @Transactional
    public List<UserChangeDTO> listChangeDetail() {
        User user = Security.user();
        return siteChangeDAO.listByUser(user.getId()).stream()
                .map(x -> new UserChangeDTO(
                        x.getSiteId(),
                        x.getUserId(),
                        x.getVersion(),
                        x.getFieldName(),
                        x.getOldValue(),
                        x.getNewValue(),
                        x.getChangeDate(),
                        AddressDTOFunctions.transform(x.getAddress()),
                        x.getSiteName())).collect(Collectors.toList());
    }

}

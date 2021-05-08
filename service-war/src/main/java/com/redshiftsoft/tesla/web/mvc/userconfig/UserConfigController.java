package com.redshiftsoft.tesla.web.mvc.userconfig;

import com.redshiftsoft.tesla.dao.user.Unit;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserConfigDAO;
import com.redshiftsoft.tesla.web.filter.Security;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Optional;
import java.util.logging.Logger;

@Controller
@RequestMapping("/userConfig")
public class UserConfigController {

    private static final Logger LOG = Logger.getLogger(UserConfigController.class.getName());

    private static final UserConfigToDTOFunction DTO_FUNCTION = new UserConfigToDTOFunction();

    @Resource
    private UserConfigDAO userConfigDao;

    @Resource
    private UserConfigFromDTOFunction fromDTOFunction;

    @Transactional
    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public UserConfigDTO get() {
        Optional<User> userOption = Security.userOption();
        UserConfig userConfig;
        if (userOption.isPresent()) {
            userConfig = userConfigDao.getById(userOption.get().getId());
        } else {
            userConfig = UserConfig.create(Unit.MI);
        }
        return DTO_FUNCTION.apply(userConfig);
    }

    @Transactional
    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody
    public void save(@RequestBody UserConfigDTO userConfigDto) {
        Optional<User> userOption = Security.userOption();
        if (userOption.isPresent()) {
            Integer userId = userOption.get().getId();
            UserConfig userConfig = fromDTOFunction.apply(userConfigDto);
            LOG.info("userId=" + userId + "; " + userConfigDto);
            userConfigDao.update(userId, userConfig);
        }
    }


}

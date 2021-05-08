package com.redshiftsoft.tesla.web.mvc.userroute;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserRoute;
import com.redshiftsoft.tesla.dao.user.UserRouteDAO;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/userRoute")
public class UserRouteController {

    private static final Logger LOG = Logger.getLogger(UserRouteController.class.getName());

    private static final UserRouteToDTOFunction DTO_FUNCTION = new UserRouteToDTOFunction();
    private static final UserRouteFromDTOFunction FROM_DTO_FUNCTION = new UserRouteFromDTOFunction();

    @Resource
    private final UserRouteDAO userRouteDao;

    /* constructor for testing */
    protected UserRouteController(UserRouteDAO userRouteDao) {
        this.userRouteDao = userRouteDao;
    }

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public List<UserRouteDTO> get() {
        User threadUser = Security.user();
        List<UserRoute> userRouteList = userRouteDao.getByUserId(threadUser.getId());
        return DTO_FUNCTION.apply(userRouteList);
    }

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody
    public RouteSaveJsonResponse save(@RequestBody UserRouteDTO userRouteDto) {
        User threadUser = Security.user();
        Integer userId = threadUser.getId();
        UserRoute userRoute = FROM_DTO_FUNCTION.apply(userRouteDto);
        LOG.info("userId=" + userId + "; " + userRouteDto);
        // CASE 1: update existing route
        if (userRoute.getId() > 0) {
            userRouteDao.update(userId, userRoute);
            return new RouteSaveJsonResponse(userRoute.getId(), "updated");
        }
        // CASE 2: Save new route
        else {
            userRouteDao.insert(userId, userRoute);
            return new RouteSaveJsonResponse(userRoute.getId(), "saved");
        }
    }

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(method = RequestMethod.GET, value = "/delete/{routeId}")
    @ResponseBody
    public JsonResponse delete(@PathVariable Integer routeId) {
        User threadUser = Security.user();
        Integer userId = threadUser.getId();
        LOG.info("userId=" + userId + "; routeId=" + routeId);
        if (userRouteDao.getByIdAndUserId(userId, routeId) != null) {
            userRouteDao.delete(routeId);
            return JsonResponse.success();
        } else {
            return JsonResponse.fail("route does not exist");
        }
    }

    @PreAuthorize("isAuthenticated()")
    @Transactional
    @RequestMapping(method = RequestMethod.GET, value = "/count")
    @ResponseBody
    public UserRouteCountDTO count() {
        return new UserRouteCountDTO(userRouteDao.count(Security.user().getId()));
    }
}

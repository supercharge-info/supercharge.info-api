package com.redshiftsoft.tesla.web.mvc.userroute;

import com.redshiftsoft.tesla.dao.user.UserRoute;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

public class UserRouteToDTOFunction implements Function<List<UserRoute>, List<UserRouteDTO>> {

    public UserRouteDTO apply(UserRoute userRoute) {
        UserRouteDTO dto = new UserRouteDTO();
        dto.id = userRoute.getId();
        dto.name = userRoute.getName();
        dto.waypoints = userRoute.getWaypoints();
        dto.createdDate = userRoute.getCreatedDate();
        dto.modifiedDate = userRoute.getModifiedDate();
        return dto;
    }

    @Override
    public List<UserRouteDTO> apply(List<UserRoute> userRoutes) {
        List<UserRouteDTO> resultList = new ArrayList<>();

        for (UserRoute route : userRoutes) {
            resultList.add(apply(route));
        }

        return resultList;
    }
}

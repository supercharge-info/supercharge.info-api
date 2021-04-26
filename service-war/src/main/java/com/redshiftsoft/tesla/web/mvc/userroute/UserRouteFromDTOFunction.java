package com.redshiftsoft.tesla.web.mvc.userroute;

import com.google.common.collect.ImmutableList;
import com.redshiftsoft.tesla.dao.user.UserConfig;
import com.redshiftsoft.tesla.dao.user.UserRoute;
import com.redshiftsoft.tesla.dao.user.UserRouteWaypoint;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.function.Function;

@Component
public class UserRouteFromDTOFunction implements Function<UserRouteDTO, UserRoute> {

    private static final List<UserRouteWaypoint> emptyList = ImmutableList.of();

    @Override
    public UserRoute apply(UserRouteDTO dto) {

        validateCoordinates(dto);

        return new UserRoute(
                dto.id,
                dto.name,
                dto.waypoints == null ? emptyList : dto.waypoints);
    }

    private static void validateCoordinates(UserRouteDTO dto) {
        if (dto.waypoints != null) {
            for (UserRouteWaypoint m : dto.waypoints) {
                if (!UserConfig.isValidLatitude(m.getLat())) {
                    m.setLat(0.0);
                }
                if (!UserConfig.isValidLongitude(m.getLng())) {
                    m.setLng(0.0);
                }
            }
        }
    }
}

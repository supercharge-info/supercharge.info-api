package com.redshiftsoft.tesla.dao.user;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUserRouteWaypoints;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserRouteWaypointDAO_UT {

    @Resource
    private UserRouteDAO userRouteDAO;
    @Resource
    private UserDAO userDAO;
    @Resource
    private UserRouteWaypointDAO userRouteWaypointDAO;

    @Test
    public void insertAndGet() {
        // given -- user
        User user = TestUsers.createUser();
        userDAO.insert(user);

        // given -- route
        UserRoute routeIn = new UserRoute(null, "test user route", Lists.newArrayList());
        userRouteDAO.insert(user.getId(), routeIn);


        // when -- insert
        List<UserRouteWaypoint> waypoints = TestUserRouteWaypoints.create(3);
        userRouteWaypointDAO.insert(routeIn.getId(), waypoints);

        // then
        List<UserRouteWaypoint> waypointsOut = userRouteWaypointDAO.getById(routeIn.getId());

        for (int i = 0; i < waypoints.size(); i++) {
            assertEquals(waypoints.get(i), waypointsOut.get(i));
        }
    }


}

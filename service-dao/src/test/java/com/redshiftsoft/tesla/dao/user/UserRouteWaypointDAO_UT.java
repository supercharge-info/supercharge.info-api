package com.redshiftsoft.tesla.dao.user;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUserRouteWaypoints;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.assertEquals;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
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

package com.redshiftsoft.tesla.dao.user;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUserRouteWaypoints;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserRouteDAO_UT {

    @Resource
    private UserRouteDAO userRouteDAO;
    @Resource
    private UserDAO userDAO;

    private User user;

    @BeforeEach
    public void before() {
        user = TestUsers.createUser();
        userDAO.insert(user);
    }

    @Test
    public void insertAndGet() {
        // given -- route
        int howMany = RandomUtils.fast().getInteger(1, 20);
        List<UserRouteWaypoint> waypoints = TestUserRouteWaypoints.create(howMany);
        UserRoute routeIn = new UserRoute(null, "test user route", waypoints);

        // when
        userRouteDAO.insert(user.getId(), routeIn);

        // then
        UserRoute routeOut = userRouteDAO.getById(routeIn.getId());

        assertEquals(routeIn.getName(), routeOut.getName());
        assertNotNull(routeOut.getCreatedDate());
        assertNotNull(routeOut.getModifiedDate());
        assertEquals(routeIn.getWaypoints().size(), routeOut.getWaypoints().size());

        for (int i = 0; i < howMany; i++) {
            assertEquals(routeIn.getWaypoints().get(i), routeOut.getWaypoints().get(i));
        }
    }

    @Test
    public void insertDuplicateNameFails() {
        // given
        UserRoute routeIn1 = new UserRoute(null, "test user route", Lists.newArrayList());
        UserRoute routeIn2 = new UserRoute(null, "test user route", Lists.newArrayList());
        userRouteDAO.insert(user.getId(), routeIn1);

        // when
        try {
            userRouteDAO.insert(user.getId(), routeIn2);
            fail("expected exception above");
        } catch (Exception e) {
            assertTrue(e.getMessage().contains("duplicate key value violates unique constraint \"user_route_unique\""));
        }

    }

    @Test
    public void exists() {
        UserRoute route = new UserRoute(null, "test user route", Lists.newArrayList());
        userRouteDAO.insert(user.getId(), route);

        assertTrue(userRouteDAO.exists(user.getId(), route.getName()));

        userRouteDAO.delete(route.getId());

        assertFalse(userRouteDAO.exists(user.getId(), route.getName()));
    }

    @Test
    public void count() {
        assertEquals(0, userRouteDAO.count(user.getId()));

        UserRoute route1 = new UserRoute(null, "testRoute1", Lists.newArrayList());
        userRouteDAO.insert(user.getId(), route1);
        assertEquals(1, userRouteDAO.count(user.getId()));

        UserRoute route2 = new UserRoute(null, "testRoute2", Lists.newArrayList());
        userRouteDAO.insert(user.getId(), route2);
        assertEquals(2, userRouteDAO.count(user.getId()));

        userRouteDAO.delete(route1.getId());
        assertEquals(1, userRouteDAO.count(user.getId()));
        userRouteDAO.delete(route2.getId());
        assertEquals(0, userRouteDAO.count(user.getId()));
    }

    @Test
    public void update() {
        // given -- route
        int howMany1 = RandomUtils.fast().getInteger(1, 20);
        List<UserRouteWaypoint> waypoints1 = TestUserRouteWaypoints.create(howMany1);
        UserRoute routeIn = new UserRoute(null, "test user route", waypoints1);
        userRouteDAO.insert(user.getId(), routeIn);

        // when -- update
        int howMany2 = RandomUtils.fast().getInteger(1, 20);
        List<UserRouteWaypoint> waypoints2 = TestUserRouteWaypoints.create(howMany2);
        routeIn = new UserRoute(routeIn.getId(), routeIn.getName(), waypoints2);
        userRouteDAO.update(routeIn.getId(), routeIn);

        // then
        UserRoute routeOut = userRouteDAO.getById(routeIn.getId());

        assertEquals(routeIn.getName(), routeOut.getName());
        assertNotNull(routeOut.getCreatedDate());
        assertNotNull(routeOut.getModifiedDate());
        assertEquals(routeIn.getWaypoints().size(), routeOut.getWaypoints().size());

        for (int i = 0; i < waypoints2.size(); i++) {
            assertEquals(routeIn.getWaypoints().get(i), routeOut.getWaypoints().get(i));
        }
    }

}

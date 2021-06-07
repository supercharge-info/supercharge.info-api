package com.redshiftsoft.tesla.web.mvc.userroute;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserRoute;
import com.redshiftsoft.tesla.dao.user.UserRouteDAO;
import com.redshiftsoft.tesla.dao.user.UserRouteWaypoint;
import com.redshiftsoft.tesla.web.filter.Security;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class UserRouteController_UT {

    private static final double DELTA = 1e-15;

    private UserRouteDAO mockUserRouteDao;
    private UserRouteController classUnderTest;

    private final User threadUser = new User();

    @BeforeEach
    public void beforeTest() {
        mockUserRouteDao = Mockito.mock(UserRouteDAO.class);
        classUnderTest = new UserRouteController(mockUserRouteDao);

        threadUser.setUsername("testUser");
        threadUser.setId(123);
        Security.setAuth(threadUser);
    }

    @AfterEach
    public void afterTest() {
        Security.clearAuth();
    }

    @Test
    public void testGet() {
        UserRouteWaypoint waypoint1 = new UserRouteWaypoint();
        waypoint1.setName("waypoint1");
        waypoint1.setLat(111);
        waypoint1.setLng(222);

        UserRouteWaypoint waypoint2 = new UserRouteWaypoint();
        waypoint2.setName("waypoint2");
        waypoint2.setLat(333);
        waypoint2.setLng(444);

        List<UserRouteWaypoint> waypointList1 = new ArrayList<>();
        waypointList1.add(waypoint1);
        waypointList1.add(waypoint2);

        UserRoute userRoute1 = new UserRoute(321, "testroute1", waypointList1);

        UserRouteWaypoint waypoint3 = new UserRouteWaypoint();
        waypoint3.setName("waypoint3");
        waypoint3.setLat(111);
        waypoint3.setLng(100);

        UserRouteWaypoint waypoint4 = new UserRouteWaypoint();
        waypoint4.setName("waypoint4");
        waypoint4.setLat(2182.321);
        waypoint4.setLng(182.21);

        List<UserRouteWaypoint> waypointList2 = new ArrayList<>();
        waypointList2.add(waypoint3);
        waypointList2.add(waypoint4);

        UserRoute userRoute2 = new UserRoute(111, "testroute2", waypointList2);

        List<UserRoute> userRouteList = new ArrayList<>();
        userRouteList.add(userRoute1);
        userRouteList.add(userRoute2);

        when(mockUserRouteDao.getByUserId(threadUser.getId())).thenReturn(userRouteList);

        List<UserRouteDTO> userRouteDTOList = classUnderTest.get();

        assertEquals(2, userRouteDTOList.size());

        assertEquals(userRoute1.getName(), userRouteDTOList.get(0).name);
        assertEquals(userRoute1.getId().intValue(), userRouteDTOList.get(0).id);
        assertEquals(2, userRouteDTOList.get(0).waypoints.size());
        assertEquals(waypoint1.getName(), userRouteDTOList.get(0).waypoints.get(0).getName());
        assertEquals(waypoint1.getLat(), userRouteDTOList.get(0).waypoints.get(0).getLat(), DELTA);
        assertEquals(waypoint1.getLat(), userRouteDTOList.get(0).waypoints.get(0).getLat(), DELTA);
        assertEquals(waypoint2.getName(), userRouteDTOList.get(0).waypoints.get(1).getName());
        assertEquals(waypoint2.getLat(), userRouteDTOList.get(0).waypoints.get(1).getLat(), DELTA);
        assertEquals(waypoint2.getLat(), userRouteDTOList.get(0).waypoints.get(1).getLat(), DELTA);

        assertEquals(userRoute2.getName(), userRouteDTOList.get(1).name);
        assertEquals(userRoute2.getId().intValue(), userRouteDTOList.get(1).id);
        assertEquals(2, userRouteDTOList.get(1).waypoints.size());
        assertEquals(waypoint3.getName(), userRouteDTOList.get(1).waypoints.get(0).getName());
        assertEquals(waypoint3.getLat(), userRouteDTOList.get(1).waypoints.get(0).getLat(), DELTA);
        assertEquals(waypoint3.getLat(), userRouteDTOList.get(1).waypoints.get(0).getLat(), DELTA);
        assertEquals(waypoint4.getName(), userRouteDTOList.get(1).waypoints.get(1).getName());
        assertEquals(waypoint4.getLat(), userRouteDTOList.get(1).waypoints.get(1).getLat(), DELTA);
        assertEquals(waypoint4.getLat(), userRouteDTOList.get(1).waypoints.get(1).getLat(), DELTA);
    }

    @Test
    public void testGetNoUserId_ShouldReturnEmptyList() {
        UserRouteWaypoint waypoint1 = new UserRouteWaypoint();
        waypoint1.setName("waypoint1");
        waypoint1.setLat(111);
        waypoint1.setLng(222);

        UserRouteWaypoint waypoint2 = new UserRouteWaypoint();
        waypoint2.setName("waypoint2");
        waypoint2.setLat(333);
        waypoint2.setLng(444);

        List<UserRouteWaypoint> waypointList1 = new ArrayList<>();
        waypointList1.add(waypoint1);
        waypointList1.add(waypoint2);

        UserRoute userRoute1 = new UserRoute(321, "testroute1", waypointList1);

        UserRouteWaypoint waypoint3 = new UserRouteWaypoint();
        waypoint3.setName("waypoint3");
        waypoint3.setLat(111);
        waypoint3.setLng(100);

        UserRouteWaypoint waypoint4 = new UserRouteWaypoint();
        waypoint4.setName("waypoint4");
        waypoint4.setLat(2182.321);
        waypoint4.setLng(182.21);

        List<UserRouteWaypoint> waypointList2 = new ArrayList<>();
        waypointList2.add(waypoint3);
        waypointList2.add(waypoint4);

        UserRoute userRoute2 = new UserRoute(111, "testroute2", waypointList2);

        List<UserRoute> userRouteList = new ArrayList<>();
        userRouteList.add(userRoute1);
        userRouteList.add(userRoute2);

        verifyNoInteractions(mockUserRouteDao);

        List<UserRouteDTO> userRouteDTOList = classUnderTest.get();

        assertEquals(0, userRouteDTOList.size());
    }

    @Test
    public void testSave() {
        ArgumentCaptor<Integer> userIdCaptor = ArgumentCaptor.forClass(Integer.class);
        ArgumentCaptor<UserRoute> userRouteCaptor = ArgumentCaptor.forClass(UserRoute.class);

        List<UserRouteWaypoint> waypoints = new ArrayList<>();
        UserRouteWaypoint waypoint = new UserRouteWaypoint();
        waypoint.setName("some point");
        waypoint.setLat(3123.234);
        waypoint.setLng(23.4211);
        waypoints.add(waypoint);

        UserRouteDTO userRouteDTO = new UserRouteDTO();
        userRouteDTO.id = -1;
        userRouteDTO.name = "testRoute";
        userRouteDTO.waypoints = waypoints;

        classUnderTest.save(userRouteDTO);

        verify(mockUserRouteDao).insert(userIdCaptor.capture(), userRouteCaptor.capture());

        UserRoute capturedRoute = userRouteCaptor.getValue();
        assertEquals(threadUser.getId(), userIdCaptor.getValue());
        assertEquals(userRouteDTO.name, capturedRoute.getName());
        assertEquals(userRouteDTO.waypoints.size(), capturedRoute.getWaypoints().size());
        assertEquals(userRouteDTO.waypoints.get(0).getName(), capturedRoute.getWaypoints().get(0).getName());
        assertEquals(userRouteDTO.waypoints.get(0).getLat(), capturedRoute.getWaypoints().get(0).getLat(), DELTA);
        assertEquals(userRouteDTO.waypoints.get(0).getLng(), capturedRoute.getWaypoints().get(0).getLng(), DELTA);
    }

    @Test
    public void testDelete() {
        Integer routeId = 101;

        ArgumentCaptor<Integer> userIdCaptor = ArgumentCaptor.forClass(Integer.class);
        ArgumentCaptor<Integer> routeIdCaptor = ArgumentCaptor.forClass(Integer.class);
        ArgumentCaptor<Integer> deleteRouteIdCaptor = ArgumentCaptor.forClass(Integer.class);

        UserRoute userRoute = new UserRoute(routeId, "testRoute", null);
        when(mockUserRouteDao.getByIdAndUserId(userIdCaptor.capture(), routeIdCaptor.capture())).thenReturn(userRoute);

        classUnderTest.delete(routeId);

        verify(mockUserRouteDao).delete(deleteRouteIdCaptor.capture());

        assertEquals(routeId, routeIdCaptor.getValue());
        assertEquals(routeId, deleteRouteIdCaptor.getValue());
        assertEquals(threadUser.getId(), userIdCaptor.getValue());
    }

    @Test
    public void testDeleteNoMatch_ShouldReturnFailResponse() {
        Integer routeId = 101;
        ArgumentCaptor<Integer> userIdCaptor = ArgumentCaptor.forClass(Integer.class);
        ArgumentCaptor<Integer> routeIdCaptor = ArgumentCaptor.forClass(Integer.class);
        ArgumentCaptor<Integer> deleteRouteIdCaptor = ArgumentCaptor.forClass(Integer.class);

        UserRoute userRoute = new UserRoute(routeId, "testRoute", null);
        when(mockUserRouteDao.getByIdAndUserId(userIdCaptor.capture(), routeIdCaptor.capture())).thenReturn(null);

        JsonResponse response = classUnderTest.delete(routeId);

        assertEquals(JsonResponse.Result.FAIL, response.getResult());
    }
}

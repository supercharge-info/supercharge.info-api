package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserRouteWaypointDAO extends BaseDAO {

    /**
     * Insert.
     */
    public void insert(int routeId, List<UserRouteWaypoint> waypoints) {
        for (int i = 0; i < waypoints.size(); i++) {
            UserRouteWaypoint w = waypoints.get(i);
            insertOne(routeId, w.getName(), w.getLat(), w.getLng(), i);
        }
    }

    /**
     * Insert one.
     */
    private void insertOne(int routeId, String name, double lat, double lng, int idx) {
        String INSERT = "INSERT INTO user_route_waypoint VALUES(?,?,?,?,?)";
        getJdbcTemplate().update(INSERT, routeId, name, lat, lng, idx);
    }

    /**
     * Update
     */
    public void update(int routeId, List<UserRouteWaypoint> waypoints) {
        delete(routeId);
        insert(routeId, waypoints);
    }

    /**
     * Delete.
     */
    public void delete(int routeId) {
        String DELETE = "DELETE FROM user_route_waypoint WHERE route_id=?";
        getJdbcTemplate().update(DELETE, routeId);
    }

    /**
     * Get
     */
    public List<UserRouteWaypoint> getById(int routeId) {
        String SELECT_SQL = "SELECT * FROM user_route_waypoint WHERE route_id=? ORDER BY position asc";
        return getJdbcTemplate().query(SELECT_SQL, USER_ROUTE_WAYPOINT_ROW_MAPPER, routeId);
    }

    private final RowMapper<UserRouteWaypoint> USER_ROUTE_WAYPOINT_ROW_MAPPER = (rs, rowNum) -> {
        UserRouteWaypoint u = new UserRouteWaypoint();
        u.setName(rs.getString(2));
        u.setLat(rs.getDouble(3));
        u.setLng(rs.getDouble(4));

        return u;
    };
}

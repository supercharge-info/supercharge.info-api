package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.Instant;
import java.util.List;

@Component
public class UserRouteDAO extends BaseDAO {

    @Resource
    private UserRouteWaypointDAO userRouteWaypointDAO;

    /**
     * Insert.
     */
    public void insert(int userId, UserRoute route) {
        try {
            String INSERT = "INSERT INTO user_route VALUES(DEFAULT,?,?,now(),now())";
            PreparedStatement stat = getPreparedStatementWithKeys(INSERT);
            stat.setInt(1, userId);
            stat.setString(2, route.getName());

            stat.execute();

            route.setId(getIntegerGeneratedKey(stat));
            userRouteWaypointDAO.insert(route.getId(), route.getWaypoints());
        } catch (SQLException e) {
            logAndThrowUnchecked(e);
        }
    }

    public void update(int userId, UserRoute route) {
        String UPDATE = "update user_route set route_name=?,modified_date=now() where route_id=? and user_id=?";
        getJdbcTemplate().update(UPDATE, route.getName(), route.getId(), userId);
        userRouteWaypointDAO.update(route.getId(), route.getWaypoints());
    }

    public UserRoute getById(int routeId) {
        String SELECT_SQL = "SELECT * FROM user_route WHERE route_id=?";
        return getJdbcTemplate().queryForObject(SELECT_SQL, USER_ROUTER_ROW_MAPPER, routeId);
    }

    public List<UserRoute> getByUserId(int userId) {
        String SELECT_SQL = "SELECT * FROM user_route WHERE user_id=? order by route_name asc";
        return getJdbcTemplate().query(SELECT_SQL, USER_ROUTER_ROW_MAPPER, userId);
    }

    public UserRoute getByIdAndUserId(int userId, int routeId) {
        String SELECT_SQL = "SELECT * FROM user_route WHERE route_id=? and user_id=?";
        return getJdbcTemplate().queryForObject(SELECT_SQL, USER_ROUTER_ROW_MAPPER, routeId, userId);
    }

    public boolean exists(int userId, String routeName) {
        String COUNT_SQL = "SELECT count(*) FROM user_route WHERE route_name=? and user_id=?";
        return getCount(COUNT_SQL, routeName, userId) > 0;
    }

    public long count(int userId) {
        String COUNT_SQL = "SELECT count(*) FROM user_route WHERE user_id=?";
        return getCount(COUNT_SQL, userId);
    }

    public void delete(int routeId) {
        userRouteWaypointDAO.delete(routeId);
        getJdbcTemplate().update("DELETE FROM user_route WHERE route_id=?", routeId);
    }

    private final RowMapper<UserRoute> USER_ROUTER_ROW_MAPPER = (rs, rowNum) -> {
        int routeId = rs.getInt(1);
        String routeName = rs.getString(3);
        Instant created = BaseDAO.getInstant(rs, 4);
        Instant lastModified = BaseDAO.getInstant(rs, 5);

        List<UserRouteWaypoint> waypoints = userRouteWaypointDAO.getById(routeId);

        return new UserRoute(routeId, routeName, waypoints, created, lastModified);
    };
}

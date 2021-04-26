package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserConfigMarkerDAO extends BaseDAO {

    /**
     * Insert.
     */
    public void insert(Integer userId, List<UserConfigMarker> markers) {
        for (UserConfigMarker m : markers) {
            insert(userId, m.getName(), m.getLat(), m.getLng());
        }
    }

    /**
     * Insert.
     */
    public void insert(Integer userId, String name, double lat, double lng) {
        String INSERT = "INSERT INTO user_config_marker VALUES(?,?,?,?,now())";
        getJdbcTemplate().update(INSERT, userId, lat, lng, name);
    }

    /**
     * Delete.
     */
    public void delete(Integer userId) {
        String INSERT = "DELETE FROM user_config_marker WHERE user_id=?";
        getJdbcTemplate().update(INSERT, userId);
    }

    /**
     * Get
     */
    public List<UserConfigMarker> getById(final Integer userId) {
        String SELECT_SQL = "SELECT * FROM user_config_marker WHERE user_id=?";
        return getJdbcTemplate().query(SELECT_SQL, USER_CONFIG_ROW_MAPPER, userId);
    }

    private final RowMapper<UserConfigMarker> USER_CONFIG_ROW_MAPPER = (rs, rowNum) -> {
        UserConfigMarker u = new UserConfigMarker();
        u.setLat(rs.getDouble(2));
        u.setLng(rs.getDouble(3));
        u.setName(rs.getString(4));
        return u;
    };
}

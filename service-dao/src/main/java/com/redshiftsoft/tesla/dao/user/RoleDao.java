package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * NOTES:
 *
 * <ul>
 * <li>ul>role_names are always all lower case.</li>
 * </ul>
 */
@Component
public class RoleDao extends BaseDAO {

    public List<String> loadRoles(Integer userId) {
        String sql = "" +
                "select r.role_name " +
                "from user_role ur " +
                "join roles r on r.role_id=ur.role_id " +
                "where ur.user_id=?";

        return getJdbcTemplate().queryForList(sql, String.class, userId);
    }

    public void insert(Integer userId, List<String> roles) {
        for (String role : roles) {
            insert(userId, role);
        }
    }

    public void insert(Integer userId, String roleName) {
        getJdbcTemplate().update("" +
                "insert into user_role(user_id,role_id,created_date) " +
                "values (?,(select role_id from roles where role_name=?),now())", userId, roleName);
    }


}

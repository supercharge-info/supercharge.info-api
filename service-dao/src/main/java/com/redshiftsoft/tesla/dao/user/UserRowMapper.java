package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class UserRowMapper implements RowMapper<User> {

    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();

        int i = 1;
        user.setId(rs.getInt(i++));
        user.setUsername(rs.getString(i++));
        user.setPasswordSalt(rs.getString(i++));
        user.setPasswordHash(rs.getString(i++));
        user.setEmail(rs.getString(i++));
        user.setEnabled(rs.getBoolean(i++));
        user.setCreationDate(BaseDAO.getInstant(rs, i++));
        // modified date
        i++;
        user.setDescription(rs.getString(i++));
        user.setEmailVerified(rs.getBoolean(i));

        return user;
    }

}

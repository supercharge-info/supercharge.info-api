package com.redshiftsoft.tesla.dao.sitechanges;

import com.redshiftsoft.tesla.dao.site.AddressRowMapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;

public class UserChangesRowMapper implements RowMapper<UserChange> {

    public static final String SELECT_ALL = "" +
            "SELECT sc.*, s.name, a.*, c.name, r.region_id, r.name " +
            "FROM site_change sc " +
            "LEFT JOIN site s using (site_id) " +
            "LEFT JOIN address a using (address_id) " +
            "LEFT JOIN country c using (country_id) " +
            "LEFT JOIN region r using (region_id) " +
            "WHERE sc.user_id=? " +
            "ORDER BY change_date DESC";

    @Override
    public UserChange mapRow(ResultSet rs, int rowNum) throws SQLException {
        UserChange userChange = new UserChange();

        int c = 1;
        userChange.setSiteId(rs.getInt(c++));
        userChange.setUserId(rs.getInt(c++));
        userChange.setVersion(rs.getInt(c++));
        userChange.setChangeDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));

        userChange.setFieldName(rs.getString(c++));
        userChange.setOldValue(rs.getString(c++));
        userChange.setNewValue(rs.getString(c++));

        userChange.setSiteName(rs.getString(c++));
        userChange.setAddress(new AddressRowMapper(c).mapRow(rs, rowNum));

        return userChange;
    }

}

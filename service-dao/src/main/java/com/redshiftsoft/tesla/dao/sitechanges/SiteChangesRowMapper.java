package com.redshiftsoft.tesla.dao.sitechanges;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;

public class SiteChangesRowMapper implements RowMapper<SiteChange> {

    public static final String SELECT_ALL = "" +
            "SELECT sc.*, u.username " +
            "FROM site_change sc " +
            "LEFT JOIN users  u on u.user_id = sc.user_id " +
            "WHERE sc.site_id=? " +
            "ORDER BY change_date ASC";

    @Override
    public SiteChange mapRow(ResultSet rs, int rowNum) throws SQLException {
        SiteChange siteChange = new SiteChange();

        int c = 1;
        siteChange.setSiteId(rs.getInt(c++));
        siteChange.setUserId(rs.getInt(c++));
        siteChange.setVersion(rs.getInt(c++));
        siteChange.setChangeDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));

        siteChange.setFieldName(rs.getString(c++));
        siteChange.setOldValue(rs.getString(c++));
        siteChange.setNewValue(rs.getString(c++));

        siteChange.setUsername(rs.getString(c));

        return siteChange;
    }

}

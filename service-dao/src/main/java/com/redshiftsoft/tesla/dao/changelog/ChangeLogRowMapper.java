package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;

public class ChangeLogRowMapper implements RowMapper<ChangeLog> {

    public static final String SELECT = "" +
            "select cl.*, " +
            "       s.name as site_name, " +
            "       c.country_id, " +
            "       c.name as country_name, " +
            "       r.region_id, " +
            "       r.name as region_name, " +
            "       a.state as state, " +
            "       s.stall_count as stall_count, " +
            "       s.power_kwatt as power_kwatt, " +
            "       s.other_evs as other_evs " +
            "from changelog cl  " +
            "join site      s on cl.site_id   = s.site_id " +
            "join address   a on s.address_id = a.address_id " +
            "join country   c on a.country_id = c.country_id " +
            "join region    r on r.region_id  = c.region_id ";

    @Override
    public ChangeLog mapRow(ResultSet rs, int rowNum) throws SQLException {
        ChangeLog log = new ChangeLog();

        int c = 1;

        log.setId(rs.getInt(c++));
        log.setSiteId(rs.getInt(c++));
        log.setDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        log.setChangeType(ChangeType.valueOf(rs.getString(c++)));
        log.setSiteStatus(SiteStatus.valueOf(rs.getString(c++)));
        log.setModifiedInstant(Instant.ofEpochMilli(rs.getTimestamp(c).getTime()));

        log.setSiteName(rs.getString("site_name"));

        log.setRegionId(rs.getInt("region_id"));
        log.setRegionName(rs.getString("region_name"));

        log.setCountryId(rs.getInt("country_id"));
        log.setCountryName(rs.getString("country_name"));

        log.setState(rs.getString("state"));

        log.setStallCount(rs.getInt("stall_count"));
        log.setPowerKilowatt(rs.getInt("power_kwatt"));
        log.setOtherEVs(rs.getBoolean("other_evs"));

        return log;
    }


}

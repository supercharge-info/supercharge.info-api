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
            "       s.stall_count as site_stall_count, " +
            "       s.power_kwatt as power_kwatt, " +
            "       s.other_evs as other_evs, " +
            "       pcl.site_status as prev_status, " +
            "       pcl.stall_count as prev_count " +
            "from changelog cl  " +
            "join site      s on cl.site_id   = s.site_id " +
            "join address   a on s.address_id = a.address_id " +
            "join country   c on a.country_id = c.country_id " +
            "join region    r on r.region_id  = c.region_id " +
            "left join changelog pcl " +
            "    on pcl.site_id = cl.site_id " +
            "    and pcl.id = (" +
            "        select max(id) from changelog where site_id = cl.site_id and change_date = (" +
            "            select max(change_date) from changelog where site_id = cl.site_id and change_date < cl.change_date" +
            "        )" +
            "    )";

    @Override
    public ChangeLog mapRow(ResultSet rs, int rowNum) throws SQLException {
        ChangeLog log = new ChangeLog();

        int c = 1;

        log.setId(rs.getInt(c++));
        log.setSiteId(rs.getInt(c++));
        log.setDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        log.setChangeType(ChangeType.valueOf(rs.getString(c++)));
        log.setSiteStatus(SiteStatus.valueOf(rs.getString(c++)));
        log.setModifiedInstant(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        log.setNotify(rs.getBoolean(c));

        log.setSiteName(rs.getString("site_name"));

        log.setRegionId(rs.getInt("region_id"));
        log.setRegionName(rs.getString("region_name"));

        log.setCountryId(rs.getInt("country_id"));
        log.setCountryName(rs.getString("country_name"));

        log.setState(rs.getString("state"));

        log.setStallCount(rs.getObject("stall_count", Integer.class));
        if (log.getStallCount() == null) log.setStallCount(rs.getInt("site_stall_count"));

        log.setPowerKilowatt(rs.getInt("power_kwatt"));
        log.setOtherEVs(rs.getBoolean("other_evs"));

        String prevStatus = rs.getString("prev_status");
        if (prevStatus != null) {
            log.setPrevStatus(SiteStatus.valueOf(prevStatus));
        }
        log.setPrevCount(rs.getObject("prev_count", Integer.class));
        if (log.getPrevCount() == null) log.setPrevCount(log.getStallCount());

        return log;
    }


}

package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.LocalDateUtil;
import kdw.common.string.StringTools;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SiteRowMapper implements RowMapper<Site> {

    public static final String SELECT_ALL = "" +
            "SELECT site.*, address.*, country.name, region.region_id, region.name " +
            "FROM site " +
            "JOIN address ON site.address_id = address.address_id " +
            "JOIN country ON address.country_id = country.country_id " +
            "JOIN region ON country.region_id = region.region_id";

    public static final String SELECT_ENABLED = SELECT_ALL + " WHERE enabled = TRUE";

    @Override
    public Site mapRow(ResultSet rs, int rowNum) throws SQLException {
        Site site = new Site();

        int c = 1;
        site.setId(rs.getInt(c++));
        site.setLocationId(rs.getString(c++));
        site.setName(rs.getString(c++));
        String statusString = rs.getString(c++);
        site.setStatus(StringTools.isEmpty(statusString) ? null : SiteStatus.valueOf(statusString.trim()));

        site.setDateOpened(LocalDateUtil.toLocalDate(rs.getTimestamp(c++)));
        site.setHours(rs.getString(c++));
        site.setEnabled(rs.getBoolean(c++));
        site.setCounted(rs.getBoolean(c++));

        c++; // address_id

        site.setGps(new SiteGPS(rs.getDouble(c++), rs.getDouble(c++)));

        site.setElevationMeters(rs.getInt(c++));
        site.setUrlDiscuss(rs.getString(c++));

        site.setStallCount(rs.getInt(c++));

        site.setPowerKilowatt(rs.getInt(c++));
        site.setSolarCanopy(rs.getBoolean(c++));
        site.setBattery(rs.getBoolean(c++));
        site.setDeveloperNotes(rs.getString(c++));

        site.setDateModified(LocalDateUtil.toLocalDateTime(rs.getTimestamp(c++)));
        site.setVersion(rs.getInt(c++));

        site.setAddress(new AddressRowMapper(c).mapRow(rs, rowNum));

        return site;
    }

}

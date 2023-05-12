package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.LocalDateUtil;
import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static com.redshiftsoft.tesla.dao.DAOTools.string;

public class SiteUpdateStatementCreator implements PreparedStatementCreator {

    private static final String SQL = "update site " +
            "set location_id=?,name=?,status=?::SITE_STATUS_TYPE,opened_date=?,hours=?,enabled=?,counted=?," +
            "gps_latitude=?,gps_longitude=?,elevation_meters=?,url_discuss=?,stall_count=?,power_kwatt=?," +
            "has_solar_canopy=?,has_battery=?,developer_notes=?,modified_date=now(),version=version+1,other_evs=?" +
            " where site_id=?";

    private final Site site;

    public SiteUpdateStatementCreator(Site site) {
        this.site = site;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        PreparedStatement stat = con.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

        int c = 1;
        stat.setString(c++, string(site.getLocationId()));
        stat.setString(c++, string(site.getName()));

        stat.setString(c++, site.getStatus().toString());

        stat.setTimestamp(c++, LocalDateUtil.toSQLDate(site.getDateOpened()));
        stat.setString(c++, string(site.getHours()));
        stat.setBoolean(c++, site.isEnabled());

        stat.setBoolean(c++, site.isCounted());

        stat.setDouble(c++, site.getGps().getLatitude());
        stat.setDouble(c++, site.getGps().getLongitude());

        stat.setInt(c++, site.getElevationMeters());

        stat.setString(c++, string(site.getUrlDiscuss()));

        stat.setInt(c++, site.getStallCount());

        stat.setInt(c++, site.getPowerKilowatt());
        stat.setBoolean(c++, site.isSolarCanopy());
        stat.setBoolean(c++, site.isBattery());
        stat.setString(c++, string(site.getDeveloperNotes()));
        stat.setBoolean(c++, site.isOtherEVs());

        stat.setInt(c, site.getId());

        return stat;
    }


}

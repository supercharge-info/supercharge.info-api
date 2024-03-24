package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.LocalDateUtil;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.SqlTypeValue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import static com.redshiftsoft.tesla.dao.DAOTools.string;

public class SiteInsertStatementCreator implements PreparedStatementCreator {

    private static final String SQL = "insert into site values (DEFAULT,?,?,?::SITE_STATUS_TYPE,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    private final Site site;

    public SiteInsertStatementCreator(Site site) {
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

        stat.setInt(c++, site.getAddress().getId());

        stat.setDouble(c++, site.getGps().getLatitude());
        stat.setDouble(c++, site.getGps().getLongitude());

        stat.setInt(c++, site.getElevationMeters());

        stat.setString(c++, string(site.getUrlDiscuss()));

        stat.setInt(c++, site.getStallCount());

        stat.setInt(c++, site.getPowerKilowatt());
        stat.setBoolean(c++, site.isSolarCanopy());
        stat.setBoolean(c++, site.isBattery());
        stat.setString(c++, string(site.getDeveloperNotes()));
        stat.setInt(c++, site.getVersion());
        stat.setBoolean(c++, site.isOtherEVs());

        // use setObject() instead of type-specific setX() for better null handling
        Stalls stalls = site.getStalls();
        if (stalls == null) stalls = new Stalls();
        stat.setObject(c++, stalls.getUrban(), Types.INTEGER);
        stat.setObject(c++, stalls.getV2(), Types.INTEGER);
        stat.setObject(c++, stalls.getV3(), Types.INTEGER);
        stat.setObject(c++, stalls.getV4(), Types.INTEGER);
        stat.setObject(c++, stalls.getOther(), Types.INTEGER);
        stat.setObject(c++, stalls.getAccessible(), Types.INTEGER);
        stat.setObject(c++, stalls.getTrailerFriendly(), Types.INTEGER);

        Plugs plugs = site.getPlugs();
        if (plugs == null) plugs = new Plugs();

        stat.setObject(c++, plugs.getTPC(), Types.INTEGER);
        stat.setObject(c++, plugs.getNACS(), Types.INTEGER);
        stat.setObject(c++, plugs.getCCS1(), Types.INTEGER);
        stat.setObject(c++, plugs.getCCS2(), Types.INTEGER);
        stat.setObject(c++, plugs.getType2(), Types.INTEGER);
        stat.setObject(c++, plugs.getGBT(), Types.INTEGER);
        stat.setObject(c++, plugs.getOther(), Types.INTEGER);
        stat.setObject(c++, plugs.getMulti(), Types.INTEGER);

        stat.setObject(c++, site.getParkingId(), Types.INTEGER);
        stat.setString(c++, string(site.getFacilityName()));
        stat.setString(c++, string(site.getFacilityHours()));
        stat.setString(c++, string(site.getAccessNotes()));
        stat.setString(c++, string(site.getAddressNotes()));
        stat.setObject(c++, site.getPlugshareId(), Types.BIGINT);
        stat.setObject(c++, site.getOsmId(), Types.BIGINT);

        return stat;
    }

}

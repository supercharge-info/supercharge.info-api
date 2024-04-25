package com.redshiftsoft.tesla.dao.user;

import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateUserConfigPreparedStatementCreator implements PreparedStatementCreator {

    private final UserConfig userConfig;
    private final Integer userId;

    public UpdateUserConfigPreparedStatementCreator(Integer userId, UserConfig userConfig) {
        this.userId = userId;
        this.userConfig = userConfig;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        String SQL = "UPDATE user_config " +
                "SET unit=?::distance_unit_type," +
                "region_id=?,country_id=?,states=?," +
                "change_region_id=?,change_country_id=?," +
                "data_region_id=?,data_country_id=?," +
                "chart_region_id=?,chart_country_id=?," +
                "site_status=?::site_status_type[],change_type=?::change_type," +
                "stall_count=?,power_kwatt=?,other_evs=?,solar_canopy=?,battery=?," +
                "stall_type=?,plug_type=?,parking_id=?,open_to_id=?,search=?," +
                "map_latitude=?,map_longitude=?,map_zoom=?," +
                "marker_type=?::marker_type,marker_size=?,cluster_size=?," +
                "modified_date=now(),version=version+1 " +
                "WHERE user_id=?";
        PreparedStatement stat = con.prepareStatement(SQL);

        int c = 1;
        stat.setString(c++, userConfig.getUnit().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getRegionId().orElse(null));
        stat.setObject(c++, userConfig.getCountryId().orElse(null));
        stat.setArray(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getStates().toArray(String[]::new)));
        stat.setObject(c++, userConfig.getChangesPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getChangesPageCountryId().orElse(null));
        stat.setObject(c++, userConfig.getDataPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getDataPageCountryId().orElse(null));
        stat.setObject(c++, userConfig.getChartsPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getChartsPageCountryId().orElse(null));
        stat.setArray(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getSiteStatus().stream().map(Enum::name).toArray(String[]::new)));
        stat.setString(c++, userConfig.getChangeType().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getStallCount().orElse(null));
        stat.setObject(c++, userConfig.getPowerKilowatt().orElse(null));
        stat.setObject(c++, userConfig.isOtherEVs().orElse(null));
        stat.setObject(c++, userConfig.isSolarCanopy().orElse(null));
        stat.setObject(c++, userConfig.isBattery().orElse(null));
        stat.setObject(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getStallType().orElse(null).toArray(String[]::new)));
        stat.setObject(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getPlugType().orElse(null).toArray(String[]::new)));
        stat.setObject(c++, con.createArrayOf(JDBCType.INTEGER.getName(), userConfig.getParkingId().orElse(null).toArray(Integer[]::new)));
        stat.setObject(c++, con.createArrayOf(JDBCType.INTEGER.getName(), userConfig.getOpenToId().orElse(null).toArray(Integer[]::new)));
        stat.setObject(c++, userConfig.getSearch().orElse(null));
        stat.setObject(c++, userConfig.getLatitude().orElse(null));
        stat.setObject(c++, userConfig.getLongitude().orElse(null));
        stat.setObject(c++, userConfig.getZoom().orElse(null));
        stat.setString(c++, userConfig.getMarkerType().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getMarkerSize().orElse(null));
        stat.setObject(c++, userConfig.getClusterSize().orElse(null));
        stat.setInt(c++, userId);
        return stat;
    }


}

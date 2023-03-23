package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.Region;

import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertUserConfigPreparedStatementCreator implements PreparedStatementCreator {

    private final UserConfig userConfig;
    private final Integer userId;

    public InsertUserConfigPreparedStatementCreator(Integer userId, UserConfig userConfig) {
        this.userId = userId;
        this.userConfig = userConfig;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        String SQL = "INSERT INTO user_config VALUES(?,?::distance_unit_type,?,?,?,?,?,?,?,NOW(),1,?,?,?,?,?,?::site_status_type[],?::change_type,?,?,?::marker_type,?,?)";
        PreparedStatement stat = con.prepareStatement(SQL);

        int c = 1;
        stat.setInt(c++, userId);
        stat.setString(c++, userConfig.getUnit().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getChangesPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getChangesPageCountryId().orElse(null));
        stat.setObject(c++, userConfig.getDataPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getDataPageCountryId().orElse(null));
        stat.setObject(c++, userConfig.getLatitude().orElse(null));
        stat.setObject(c++, userConfig.getLongitude().orElse(null));
        stat.setObject(c++, userConfig.getZoom().orElse(null));
        stat.setObject(c++, userConfig.getChartsPageRegionId().orElse(null));
        stat.setObject(c++, userConfig.getChartsPageCountryId().orElse(null));
        stat.setObject(c++, userConfig.getRegionId().orElse(null));
        stat.setObject(c++, userConfig.getCountryId().orElse(null));
        stat.setArray(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getStates().toArray(String[]::new)));
        stat.setArray(c++, con.createArrayOf(JDBCType.VARCHAR.getName(), userConfig.getSiteStatus().stream().map(Enum::name).toArray(String[]::new)));
        stat.setString(c++, userConfig.getChangeType().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getStallCount().orElse(null));
        stat.setObject(c++, userConfig.getPowerKilowatt().orElse(null));
        stat.setString(c++, userConfig.getMarkerType().map(Enum::toString).orElse(null));
        stat.setObject(c++, userConfig.getMarkerSize().orElse(null));
        stat.setObject(c++, userConfig.getClusterSize().orElse(null));
        return stat;
    }


}

package com.redshiftsoft.tesla.dao.sitechanges;

import com.redshiftsoft.db.jdbc.Timestamps;
import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static com.redshiftsoft.tesla.dao.DAOTools.string;

public class SiteChangesInsertStatementCreator implements PreparedStatementCreator {

    private static final String SQL = "insert into site_change values (?,?,?,?,?,?,?)";
    private final SiteChange change;

    public SiteChangesInsertStatementCreator(SiteChange change) {
        this.change = change;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        PreparedStatement stat = con.prepareStatement(SQL);

        int c = 1;
        stat.setInt(c++, change.getSiteId());
        stat.setInt(c++, change.getUserId());
        stat.setInt(c++, change.getVersion());
        stat.setTimestamp(c++, Timestamps.toTimestamp(change.getChangeDate()));

        stat.setString(c++, string(change.getFieldName()));
        stat.setString(c++, string(change.getOldValue()));
        stat.setString(c, string(change.getNewValue()));


        return stat;
    }


}

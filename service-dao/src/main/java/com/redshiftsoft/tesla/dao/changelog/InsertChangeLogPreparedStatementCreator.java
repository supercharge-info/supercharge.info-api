package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.db.jdbc.Timestamps;
import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertChangeLogPreparedStatementCreator implements PreparedStatementCreator {

    private final ChangeLog changeLog;

    public InsertChangeLogPreparedStatementCreator(ChangeLog changeLog) {
        this.changeLog = changeLog;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        String SQL = "insert into changelog values (DEFAULT,?,?,?::CHANGE_TYPE,?::SITE_STATUS_TYPE,NOW())";
        PreparedStatement stat = con.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

        int c = 1;
        stat.setInt(c++, changeLog.getSiteId());
        stat.setTimestamp(c++, Timestamps.toTimestamp(changeLog.getDate()));
        stat.setString(c++, changeLog.getChangeType().toString());
        stat.setString(c, changeLog.getSiteStatus().toString());
        return stat;
    }


}

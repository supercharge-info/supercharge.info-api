package com.redshiftsoft.tesla.dao.changelog;

import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import static com.redshiftsoft.tesla.dao.BaseDAO.toTimestamp;

public class InsertChangeLogPreparedStatementCreator implements PreparedStatementCreator {

    private final ChangeLogEdit changeLog;

    public InsertChangeLogPreparedStatementCreator(ChangeLogEdit changeLog) {
        this.changeLog = changeLog;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        String SQL = "insert into changelog values (DEFAULT,?,?,?::CHANGE_TYPE,?::SITE_STATUS_TYPE,NOW(),?,?,?)";
        PreparedStatement stat = con.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

        int c = 1;
        stat.setInt(c++, changeLog.getSiteId());
        stat.setTimestamp(c++, toTimestamp(changeLog.getDate()));
        stat.setString(c++, changeLog.getChangeType().toString());
        stat.setString(c++, changeLog.getSiteStatus().toString());
        stat.setBoolean(c++, changeLog.getNotify());
        stat.setInt(c++, changeLog.getUserId());
        stat.setObject(c, changeLog.getStallCount(), Types.INTEGER);
        return stat;
    }


}

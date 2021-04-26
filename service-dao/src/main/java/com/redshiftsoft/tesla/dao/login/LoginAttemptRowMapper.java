package com.redshiftsoft.tesla.dao.login;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.util.Locale;

public class LoginAttemptRowMapper implements RowMapper<LoginAttempt> {
    @Override
    public LoginAttempt mapRow(ResultSet rs, int rowNum) throws SQLException {
        LoginResult result = LoginResult.valueOf(rs.getString(2));
        LoginType type = LoginType.valueOf(rs.getString(3));
        Instant loginTime = BaseDAO.getInstant(rs, 4);
        String remoteIP = rs.getString(5);
        String localeString = rs.getString(6);
        Locale locale = localeString == null ? null : Locale.forLanguageTag(localeString);
        LoginAttempt attempt = new LoginAttempt(null, result, type, remoteIP, locale);
        attempt.setDate(loginTime);
        return attempt;
    }
}

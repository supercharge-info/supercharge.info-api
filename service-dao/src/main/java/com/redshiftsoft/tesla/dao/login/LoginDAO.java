package com.redshiftsoft.tesla.dao.login;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class LoginDAO extends BaseDAO {

    private static final String SQL_SELECT = "SELECT * FROM login WHERE user_id=? ORDER BY login_time DESC LIMIT ?";

    private static final String SQL_INSERT = "INSERT INTO login VALUES (?,?::LOGIN_RESULT_TYPE,?::LOGIN_TYPE,?,?,?)";

    private static final String SQL_COUNT = "" +
            "SELECT count(*) " +
            "FROM login " +
            "WHERE user_id=? " +
            "AND result != 'SUCCESS' " +
            "AND login_time > now() - (? || ' minute')::interval";

    private static final String SQL_DELETE = "DELETE FROM login WHERE user_id=?;";

    private static final String SQL_DELETE_OLD =
            "DELETE FROM login WHERE result!='SUCCESS' AND NOW() - login_time > (? || ' days')::interval";


    private final LoginAttemptRowMapper loginAttemptRowMapper = new LoginAttemptRowMapper();

    /**
     * Returns the number of invalid login attempts within the specified time period.
     *
     * @param userId  The user ID for which to count attempts.
     * @param minutes Count attempts within this many minutes from the current time.
     */
    public int getInvalidLoginCount(final Integer userId, final int minutes) {
        return (int) getCount(SQL_COUNT, userId, minutes);
    }

    /**
     * Insert a login attempt.
     *
     * @param attempt Bean representing the attempt.
     */
    public void insertAttempt(LoginAttempt attempt) {
        getJdbcTemplate().update(SQL_INSERT, attempt.getUser().getId(), attempt.getResult().name(),
                attempt.getType().name(),
                toTimestamp(attempt.getDate()),
                attempt.getRemoteIP(),
                attempt.getLocale() == null ? null : attempt.getLocale().toString());
    }

    /**
     * Select the most recent login attempts by the specified user.
     */
    public List<LoginAttempt> getAttempts(Integer userId, int maxAttempts) {
        return getJdbcTemplate().query(SQL_SELECT, loginAttemptRowMapper, userId, maxAttempts);
    }

    /**
     * Delete all login records for the specified user.
     */
    public void delete(final Integer userId) {
        getJdbcTemplate().update(SQL_DELETE, userId);
    }

    /**
     * Delete INVALID login records older than the specified age.
     *
     * @param days delete records older than this many days.
     * @return the number of rows deleted.
     */
    public int deleteOld(final Integer days) {
        return getJdbcTemplate().update(SQL_DELETE_OLD, days);
    }
}

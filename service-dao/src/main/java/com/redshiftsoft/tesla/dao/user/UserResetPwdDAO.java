package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.util.RandomUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.util.List;
import java.util.Optional;

@Component
public class UserResetPwdDAO extends BaseDAO {


    /**
     * Generate and insert the reset key that will be emailed and then used for validation.
     *
     * @param userId The user number for which we are resetting the password.
     * @return The generated key.
     */
    public String insertKey(final Integer userId) {
        String sql = "INSERT INTO user_reset_password (user_id,reset_key,request_time) VALUES (?,?,now())";
        String key = generateKey();
        getJdbcTemplate().update(sql, userId, key);
        return key;
    }

    /**
     * Validate that a key exists in the DB and return the user is goes with.
     *
     * @param key The key to validate.
     * @return The userID that this key goes with.
     */
    public ResetPwdResult validateKey(final String key) {
        String sql = "" +
                "SELECT user_id, used_time is not null is_used, request_time < now() - interval'2 days' is_expired " +
                "FROM user_reset_password " +
                "WHERE reset_key=?";
        List<ResetPwdResult> results = getJdbcTemplate().query(sql, RESET_PWD_RESULT_MAPPER, key);
        if (results.isEmpty()) {
            return null;
        }
        return results.get(0);
    }

    /**
     * Marks ALL reset keys associated with the specified user as used.
     */
    public void markUsed(final Integer userId) {
        String sql = "UPDATE user_reset_password SET used_time=now() WHERE user_id=?";
        getJdbcTemplate().update(sql, userId);
    }

    /**
     * Delete old reset password entries.
     *
     * @param days Delete requests that are older than this many days.
     * @return the number of rows deleted.
     */
    public int deleteOld(final Integer days) {
        String sql = "delete from user_reset_password where request_time < (now() - INTERVAL '" + days + " days')";
        return getJdbcTemplate().update(sql);
    }

    /**
     * Generates the reset key that is email to a user so that they can reset their user
     */
    private String generateKey() {
        // 26^26 ~= 10^36
        return RandomUtils.secure().getString(26, 'a', 'z');
    }

    private final RowMapper<ResetPwdResult> RESET_PWD_RESULT_MAPPER = (rs, rowNum) -> {
        int userId = rs.getInt(1);
        boolean used = rs.getBoolean(2);
        boolean expired = rs.getBoolean(3);

        return new ResetPwdResult(userId, used, expired);
    };

}

package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import kdw.common.secure.password.PasswordConstraint;
import kdw.common.secure.password.PasswordConstraintBuilder;
import kdw.common.secure.password.PasswordGenerator;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public class UserResetPwdDAO extends BaseDAO {

    /* Min number of characters, x, is selected such that B^x > 2^128, where B is the size of the key character set.
      That is, there are more possible reset keys than there are unique values in a 128-bit UUID. */
    public static final int RESET_KEY_MIN_LENGTH = 25;
    public static final int RESET_KEY_MAX_LENGTH = 26;

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
    public Optional<Integer> validateKey(final String key) {
        String sql = "" +
                "SELECT user_id " +
                "FROM user_reset_password " +
                "WHERE reset_key=? " +
                "  AND used_time is null " +
                "  AND request_time > (now() - INTERVAL '48 hours')";
        List<Integer> userIDList = getJdbcTemplate().queryForList(sql, Integer.class, key);
        return userIDList.isEmpty() ? Optional.empty() : Optional.of(userIDList.get(0));
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
        PasswordConstraint constraint = PasswordConstraintBuilder
                .create()
                .withSpecialCharsNone()
                .withExcludeAmbiguousChars(true)
                .withMinLength(RESET_KEY_MIN_LENGTH)
                .withMaxLength(RESET_KEY_MAX_LENGTH)
                .build();
        return PasswordGenerator.generatePassword(constraint);
    }

}

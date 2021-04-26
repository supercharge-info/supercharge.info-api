package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import kdw.common.math.RandomUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.logging.Logger;

@Component
public class UserDAO extends BaseDAO {

    private static final Logger LOG = Logger.getLogger(UserDAO.class.getName());
    private static final UserRowMapper USER_ROW_MAPPER = new UserRowMapper();

    @Resource
    private RoleDao roleDao;

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // GET
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    /**
     * Get user by username.
     *
     * @throws RuntimeException if user does not exist
     */
    public User getByUsername(final String username) {
        User user = getJdbcTemplate().queryForObject("SELECT * FROM users WHERE lower(username)=lower(?)", USER_ROW_MAPPER, username);
        user.setRoles(roleDao.loadRoles(user.getId()));
        return user;
    }

    /**
     * Get user by email.
     *
     * @throws RuntimeException if user does not exist
     */
    public User getByEmail(final String email) {
        User user = getJdbcTemplate().queryForObject("SELECT * FROM users WHERE lower(email)=lower(?)", USER_ROW_MAPPER, email);
        user.setRoles(roleDao.loadRoles(user.getId()));
        return user;
    }

    /**
     * Get user by id.
     *
     * @throws RuntimeException if user does not exist
     */
    public User getById(final Integer userId) {
        User user = getJdbcTemplate().queryForObject("SELECT * FROM users WHERE user_id=?", USER_ROW_MAPPER, userId);
        user.setRoles(roleDao.loadRoles(user.getId()));
        return user;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // EXISTS
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    /**
     * Existence check.
     */
    public boolean existsUsername(String username) {
        return getCount("select count(*) from users where lower(username)=lower(?)", username) > 0;
    }

    /**
     * Existence check.
     */
    public boolean existsEmail(String email) {
        return getCount("select count(*) from users where lower(email)=lower(?)", email) > 0;
    }

    /**
     * Existence check.
     */
    public boolean existsId(Integer id) {
        return getCount("select count(*) from users where user_id=?", id) > 0;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // INSERT
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    /**
     * Insert a new user.
     */
    public void insert(final User user) {
        String sql = "" +
                "INSERT INTO users " +
                "(" +
                "user_id,username,password_salt,password_hash,email," +
                "enabled,created_date,modified_date,description,email_verified" +
                ")" +
                "VALUES (?,?,?,?,?,?,now(),now(),?,false)";
        user.setId(findUnusedRandomId());
        getJdbcTemplate().update(sql,
                user.getId(),
                user.getUsername(),
                user.getPasswordSalt(),
                user.getPasswordHash(),
                user.getEmail(),
                user.isEnabled(),
                trim(user.getDescription(), User.MAX_LEN_DESCRIPTION));
        roleDao.insert(user.getId(), user.getRoles());
    }

    private int findUnusedRandomId() {
        RandomUtils secureRandom = RandomUtils.secure();
        int count = 0;
        int id;
        do {
            id = secureRandom.getInteger(1, 2_000_000_000);
            count++;
        } while (existsId(id));
        if (count > 1) {
            LOG.warning(String.format("Tried %,d times to get id %,d", count, id));
        }
        return id;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // UPDATE
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public void updatePasswordHash(Integer userId, String newPasswordHash) {
        String sql = "update users set password_hash=?,modified_date=now() where user_id=?";
        getJdbcTemplate().update(sql, newPasswordHash, userId);
    }

    public void updateUsername(Integer userId, String newUsername) {
        String sql = "update users set username=?,modified_date=now() where user_id=?";
        getJdbcTemplate().update(sql, newUsername, userId);
    }

    public void updateEmail(Integer userId, String newEmail) {
        String sql = "update users set email=?,modified_date=now() where user_id=?";
        getJdbcTemplate().update(sql, newEmail, userId);
    }

    public void updateDescription(Integer userId, String newDescription) {
        String sql = "update users set description=?,modified_date=now() where user_id=?";
        getJdbcTemplate().update(sql, trim(newDescription, User.MAX_LEN_DESCRIPTION), userId);
    }

    public void updateEmailVerified(Integer userId, boolean isVerified) {
        String sql = "update users set email_verified=?,modified_date=now() where user_id=?";
        getJdbcTemplate().update(sql, isVerified, userId);
    }

}
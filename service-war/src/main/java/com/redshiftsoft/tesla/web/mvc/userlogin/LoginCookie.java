package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.google.common.io.BaseEncoding;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.util.PasswordHashLogic;

import org.springframework.http.ResponseCookie;

import java.util.logging.Level;
import java.util.logging.Logger;

import static com.redshiftsoft.util.StringTools.isNotEmpty;


/**
 * The format of the value is: <b>part1-part2</b>
 * <p/>
 * Where: <ul> <li>part1 = User ID (integer) <li>part2 = hash(SALT, userId + "|" + password-hash) </ul>
 * <p/>
 * <p/>
 * Cookie max age values:
 * <ul>
 * <li>Zero causes the cookie to be deleted.
 * <li>A negative value just means the cookie will be deleted when the browser closes.
 * <li>Other values mean the cookie will survive for that many seconds, even if browser is closed.
 * </ul>
 * <p/>
 * <p/>
 * SECURITY NOTES: Like a session cookie, if this cookie is stolen the user account is compromised.
 */
public class LoginCookie {

    private static final Logger LOG = Logger.getLogger(LoginCookie.class.getName());

    /* 32 bytes = 256 bits of random SALT used in calculating cookie hash.  Prevents rainbow table attack on the cookie
     * hash itself, successful application of which would give user id,password-hash,date. Almost certainly
     * not necessary since value of the password hash is itself a 256 bit salted hash. */
    private static final byte[] SALT = BaseEncoding.base16().decode("D420F8495A45313A2371EA722CA43D60E938C35F23FFB1932B711E76E95B4365");

    /**
     * The name of the login cookie
     */
    public static final String NAME = "user";

    /**
     * The delimiter the separates the parts of the cookie value
     */
    private static final String DELIMITER = "-";

    private static final PasswordHashLogic cookieHashLogic = new PasswordHashLogic(PasswordHashLogic.PBKDF2_WITH_HMAC_SHA256, 32, 10);

    public static ResponseCookie.ResponseCookieBuilder from(final User user) {
        return ResponseCookie
            .from(NAME, user.getId() + DELIMITER + generateCode(user))
            .path("/")
            .maxAge(Integer.MAX_VALUE)
            .httpOnly(true)
            .secure(true);
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // static cookie related methods
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    /**
     * Generates part 2 of the cookie value, given an user.
     * <p/>
     * <p/>
     * SECURITY NOTES: <ul> <li>Attackers should not be able to generate this value for an user even if they look at this
     * source code. <li>Current implementation requires that attacker know target user's userID and password hash. </ul>
     *
     * @param user The user to generate the value for.
     * @return The part2 portion of the cookie value.
     */
    public static String generateCode(final User user) {
        assert user != null;
        assert isNotEmpty(user.getPasswordHash());
        assert user.getId() != null;

        /* Hash Input */
        StringBuilder hashInput = new StringBuilder();
        hashInput.append(user.getId());
        hashInput.append("|");
        hashInput.append(user.getPasswordHash());

        return cookieHashLogic.hash(hashInput.toString(), SALT);
    }

    /**
     * Given a cookie return the Integer/User-Id part 1.
     *
     * @return An invalid ID will be returned if the cookie can not be parsed.
     */
    public static int getUserId(final String cookieValue) {
        int result = -1;
        if (isNotEmpty(cookieValue)) {
            try {
                int index = cookieValue.indexOf(DELIMITER);
                String intString = cookieValue.substring(0, index);
                result = Integer.parseInt(intString);
            } catch (Throwable e) {
                LOG.log(Level.WARNING, "could not parse cookie: " + cookieValue, e);
            }
        } else {
            /* Some crawlers/robots send cookie with empty value. */
            LOG.fine("cookie had empty value");
        }
        return result;
    }

    /**
     * Given a cookie return the Integer/User-Id part 1.
     *
     * @return An invalid ID will be returned if the cookie can not be parsed.
     */
    public static String getHash(String cookieValue) {
        try {
            int index = cookieValue.indexOf(DELIMITER);
            return cookieValue.substring(index + 1);
        } catch (Throwable t) {
            LOG.warning("could not parse cookie: " + cookieValue);
        }
        return "could not parse";
    }

}

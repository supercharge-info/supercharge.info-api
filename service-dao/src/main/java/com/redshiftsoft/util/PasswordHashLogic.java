package com.redshiftsoft.util;


import com.google.common.io.BaseEncoding;

import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

/*
 * Password hashing logic.
 */
public final class PasswordHashLogic {

    public static final String PBKDF2_WITH_HMAC_SHA1 = "PBKDF2WithHmacSHA1";
    // Available in Java 8
    public static final String PBKDF2_WITH_HMAC_SHA256 = "PBKDF2WithHmacSHA256";
    // Available in Java 8
    public static final String PBKDF2_WITH_HMAC_SHA512 = "PBKDF2WithHmacSHA512";

    public static final int DEFAULT_SALT_LENGTH_BYTES = 32;

    private static final int DEFAULT_ITERATION_COUNT = 3500;
    private static final int DESIRED_KEY_LENGTH_BITS = 256;

    private static final String DEFAULT_HASH_ALGORITHM = PBKDF2_WITH_HMAC_SHA256;

    private final String hashAlgorithm;
    private final int saltLengthBytes;
    private final int iterationCount;

    public PasswordHashLogic() {
        this(DEFAULT_HASH_ALGORITHM, DEFAULT_SALT_LENGTH_BYTES, DEFAULT_ITERATION_COUNT);
    }

    public PasswordHashLogic(String hashAlgorithm, int saltLengthBytes, int iterationCount) {
        this.hashAlgorithm = hashAlgorithm;
        this.saltLengthBytes = saltLengthBytes;
        this.iterationCount = iterationCount;
    }

    // This particular library accepts only upper case HEX chars and always returns upper case.  I convert to
    // to/from lower for compatibility with the base64 library I used to use.
    private final BaseEncoding base64 = BaseEncoding.base16();

    /*
     * Generate a new RANDOM salt.  Returns bytes as hexadecimal encoded string.
     */
    public String generateNewSalt() {
        byte[] salt = RandomUtils.secure().getBytes(saltLengthBytes);
        return encode(salt);
    }

    /*
     * Checks whether given plaintext password corresponds to a stored salted hash of the password.
     */
    public boolean check(String password, String storedHash, String storedSalt) {
        return hash(password, decode(storedSalt)).equals(storedHash);
    }

    /*
     * Hash
     */
    public String hash(String password, String salt) {
        return hash(password, decode(salt));
    }

    /*
     * Hash
     */
    public String hash(String password, byte[] saltBytes) {
        try {
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(hashAlgorithm);
            SecretKey key = keyFactory.generateSecret(new PBEKeySpec(password.toCharArray(), saltBytes, iterationCount, DESIRED_KEY_LENGTH_BITS));
            return encode(key.getEncoded());
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new IllegalStateException(e);
        }
    }

    private String encode(byte[] s) {
        return base64.encode(s).toLowerCase();
    }

    private byte[] decode(String s) {
        return base64.decode(s.toUpperCase());
    }


}

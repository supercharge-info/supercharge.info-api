package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.util.StringTools;

import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class User implements Cloneable {

    public static final int MIN_LEN_USERNAME = 3;
    public static final int MAX_LEN_USERNAME = 40;
    public static final int MAX_LEN_EMAIL = 50;
    public static final int MAX_LEN_DESCRIPTION = 500;
    private static final boolean DEFAULT_ENABLED = true;

    private static final DateTimeFormatter CREATION_DATE_FORMAT = DateTimeFormatter
            .ofPattern("yyyy-MM-dd z", Locale.US)
            .withZone(ZoneId.of("UTC"));

    // ------------------------------------------------------------
    //
    // fields
    //
    // ------------------------------------------------------------

    private Integer id;
    private boolean enabled = DEFAULT_ENABLED;
    private final Set<String> roles = new TreeSet<>();
    private String username;
    private String email;
    private boolean emailVerified;
    /**
     * Password salt (16 hexadecimal encoded bytes)
     */
    private String passwordSalt;
    /**
     * For authentication (hexadecimal encoded bytes)
     */
    private String passwordHash;
    private Instant creationDate;
    private String description;


    // ------------------------------------------------------------
    //
    // Derived methods -- delegates to last team.
    //
    // ------------------------------------------------------------

    /**
     * TRUE if the user has a non-empty email address
     */
    public boolean hasEmail() {
        return StringTools.isNotEmpty(email);
    }


    // ---------------------------------------------------------
    //
    // java.lang.Object methods.
    //
    // ---------------------------------------------------------

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("id='" + getId() + "'");
        b.append(" username='" + getUsername() + "'");
        if (getCreationDate() != null) {
            String formattedDate = getCreationDateString();
            b.append(" created='" + formattedDate);
        }
        b.append(" email='" + getEmail() + "'");
        b.append(" roles='" + getRoles() + "'");
        return b.toString();
    }

    private List<?> getIdentityFields() {
        return Arrays.asList(getId(), isEnabled(), getRoles(), getUsername(), getEmail(), getPasswordSalt(),
                getPasswordHash(), getDescription(), isEmailVerified());
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || (obj instanceof User) &&
                this.getIdentityFields().equals(((User) obj).getIdentityFields());
    }

    // ------------------------------------------------------------
    // derived
    // ------------------------------------------------------------

    /**
     * Date part when account was created. Date only, UTC.
     */
    public String getCreationDateString() {
        if (getCreationDate() == null) {
            return "";
        }
        return CREATION_DATE_FORMAT.format(getCreationDate());
    }

    public boolean hasRole(String roleName) {
        return this.roles.contains(roleName);
    }

    // ------------------------------------------------------------
    //
    // getters/setters
    //
    // ------------------------------------------------------------

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(final String s) {
        this.passwordHash = s;
    }

    public Instant getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(final Instant creationDate) {
        this.creationDate = creationDate;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public List<String> getRoles() {
        return new ArrayList<>(roles);
    }

    public void setRoles(final Collection<String> rolesIn) {
        this.roles.clear();
        this.roles.addAll(rolesIn);
    }

    public String getPasswordSalt() {
        return passwordSalt;
    }

    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isEmailVerified() {
        return emailVerified;
    }

    public void setEmailVerified(boolean emailVerified) {
        this.emailVerified = emailVerified;
    }
}

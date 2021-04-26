package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;

import java.util.List;

public class UserLoginResponse extends JsonResponse {

    private String username;
    private final String email;
    private final boolean emailVerified;
    private String description;
    private final String creationDate;
    private List<String> roles;

    private UserLoginResponse(Result result, String message,
                              String username, String email, boolean emailVerified, String description, String creationDate, List<String> roles) {
        super(result, message);
        this.username = username;
        this.email = email;
        this.emailVerified = emailVerified;
        this.description = description;
        this.creationDate = creationDate;
        this.roles = roles;

    }

    public static UserLoginResponse fail() {
        return new UserLoginResponse(Result.FAIL, null, null, null, false, null, null, null);
    }

    public static UserLoginResponse fail(String message) {
        return new UserLoginResponse(Result.FAIL, message, null, null, false, null, null, null);
    }

    public static UserLoginResponse success(User user) {
        return new UserLoginResponse(Result.SUCCESS, "Success",
                user.getUsername(), user.getEmail(), user.isEmailVerified(), user.getDescription(), user.getCreationDateString(), user.getRoles());
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public String getCreationDate() {
        return creationDate;
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
}

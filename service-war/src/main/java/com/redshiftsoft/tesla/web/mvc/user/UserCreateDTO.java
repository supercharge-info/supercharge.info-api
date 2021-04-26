package com.redshiftsoft.tesla.web.mvc.user;

public class UserCreateDTO {

    private String username;
    private String email;
    private String password;
    private String unit;

    public UserCreateDTO() {
    }

    public UserCreateDTO(String username, String email, String password, String unit) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.unit = unit;
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

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    @Override
    public String toString() {
        return "UserCreateDTO{" +
                "username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", unit='" + unit + '\'' +
                '}';
    }
}

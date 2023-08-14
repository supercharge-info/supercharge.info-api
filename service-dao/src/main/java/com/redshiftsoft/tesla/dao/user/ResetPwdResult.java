package com.redshiftsoft.tesla.dao.user;

public class ResetPwdResult {

    private Integer userId;
    private boolean used;
    private boolean expired;

    /**
     * Constructor
     */
    public ResetPwdResult(Integer userId, boolean used, boolean expired) {
        this.userId = userId;
        this.used = used;
        this.expired = expired;
    }

    public Integer getUserId() {
        return userId;
    }

    public boolean isUsed() {
        return used;
    }

    public boolean isExpired() {
        return expired;
    }

}

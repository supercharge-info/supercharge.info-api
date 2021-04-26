package com.redshiftsoft.tesla.dao.site;

public enum SiteStatus {

    CLOSED_PERM,
    CLOSED_TEMP,
    PERMIT,
    CONSTRUCTION,
    OPEN;

    public boolean isClosedTemp() {
        return CLOSED_TEMP == this;
    }

    public boolean isClosedPerm() {
        return CLOSED_TEMP == this;
    }

    public boolean isPermit() {
        return PERMIT == this;
    }

    public boolean isConstruction() {
        return CONSTRUCTION == this;
    }

    public boolean isOpen() {
        return OPEN == this;
    }
}

package com.redshiftsoft.tesla.dao.user;

public enum Unit {

    /* kilometers */
    KM,
    /* miles */
    MI;

    public static Unit fromString(String string) {
        for (Unit unit : Unit.values()) {
            if (unit.name().equalsIgnoreCase(string)) {
                return unit;
            }
        }
        throw new IllegalArgumentException("invalid unit=" + string);
    }
}

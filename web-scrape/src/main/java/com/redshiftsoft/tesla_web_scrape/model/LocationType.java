package com.redshiftsoft.tesla_web_scrape.model;

import com.fasterxml.jackson.annotation.JsonCreator;

public enum LocationType {

    STANDARD_CHARGER,
    DESTINATION_CHARGER,
    SUPERCHARGER,
    SERVICE,
    STORE,
    DELIVERY,
    LOGISTICS,
    PARTY,
    UNKNOWN;

    @JsonCreator
    public static LocationType forValue(String value) {
        if ("standard charger".equalsIgnoreCase(value)) {
            return STANDARD_CHARGER;
        } else if ("destination charger".equalsIgnoreCase(value)) {
            return DESTINATION_CHARGER;
        } else if ("supercharger".equalsIgnoreCase(value)) {
            return SUPERCHARGER;
        } else if ("service".equalsIgnoreCase(value)) {
            return SERVICE;
        } else if ("store".equalsIgnoreCase(value)) {
            return STORE;
        } else if ("delivery".equalsIgnoreCase(value)) {
            return DELIVERY;
        } else if ("logistics".equalsIgnoreCase(value)) {
            return LOGISTICS;
        } else if ("party".equalsIgnoreCase(value)) {
            return PARTY;
        }
        return UNKNOWN;
    }

}

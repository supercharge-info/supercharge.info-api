package com.redshiftsoft.tesla.web.mvc.validation;

import com.fasterxml.jackson.annotation.JsonRawValue;
import com.fasterxml.jackson.annotation.JsonValue;

class RawJson {

    private final String value;

    public RawJson(String value) {
        this.value = value;
    }

    @JsonValue
    @JsonRawValue
    public String value() {
        return value;
    }
}
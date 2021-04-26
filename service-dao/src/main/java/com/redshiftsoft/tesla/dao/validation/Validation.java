package com.redshiftsoft.tesla.dao.validation;

public class Validation {

    private final ValidationCategory category;
    private final String description;
    private final String sql;

    public Validation(ValidationCategory category, String description, String sql) {
        this.category = category;
        this.description = description;
        this.sql = sql;
    }

    public ValidationCategory getCategory() {
        return category;
    }

    public String getDescription() {
        return description;
    }

    public String getSql() {
        return sql;
    }

    @Override
    public String toString() {
        return "Validation{" +
                "category=" + category +
                ", description='" + description + '\'' +
                ", sql='" + sql + '\'' +
                '}';
    }
}

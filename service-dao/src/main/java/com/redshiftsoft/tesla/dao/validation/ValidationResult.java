package com.redshiftsoft.tesla.dao.validation;

import java.util.List;
import java.util.Map;

public class ValidationResult {

    private final Validation validation;
    private final List<Map<String, Object>> failureRows;

    public ValidationResult(Validation validation, List<Map<String, Object>> failureRows) {
        this.validation = validation;
        this.failureRows = failureRows;
    }

    public boolean isPass() {
        return failureRows.isEmpty();
    }

    public Validation getValidation() {
        return validation;
    }

    public List<Map<String, Object>> getFailureRows() {
        return failureRows;
    }

    @Override
    public String toString() {
        return "ValidationResult{" +
                "validation=" + validation +
                ", failureRows=" + failureRows +
                '}';
    }
}

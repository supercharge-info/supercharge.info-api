package com.redshiftsoft.tesla.dao.validation;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.List;
import java.util.Map;

@Component
public class ValidationDAO extends BaseDAO {

    private static final Collection<Validation> VALIDATION_COLLECTION = Validations.getValidations();

    public List<ValidationResult> doValidations() {

        List<ValidationResult> results = Lists.newArrayList();

        for (Validation validation : VALIDATION_COLLECTION) {
            List<Map<String, Object>> failureRows = getJdbcTemplate().query(validation.getSql(), new ColumnMapRowMapper());
            convertValuesToStrings(failureRows);
            results.add(new ValidationResult(validation, failureRows));
        }

        return results;
    }

    /**
     * Currently ValidationResult is used as the DTO object, so we have to make sure all
     * of the Map values are things that can be serialized as JSON.
     */
    private static void convertValuesToStrings(List<Map<String, Object>> failureRows) {
        for (Map<String, Object> map : failureRows) {
            for (String key : map.keySet()) {
                Object value = map.get(key);
                if (value != null && !(value instanceof String)) {
                    map.put(key, value.toString());
                }
            }
        }
    }


}

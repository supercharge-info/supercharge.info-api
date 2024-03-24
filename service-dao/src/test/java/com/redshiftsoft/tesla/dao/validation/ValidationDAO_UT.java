package com.redshiftsoft.tesla.dao.validation;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collection;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class ValidationDAO_UT {

    @Resource
    private ValidationDAO validationDAO;


    @Test
    public void doValidations() {
        Collection<ValidationResult> results = validationDAO.doValidations();

        assertEquals(21, results.size());
    }
}

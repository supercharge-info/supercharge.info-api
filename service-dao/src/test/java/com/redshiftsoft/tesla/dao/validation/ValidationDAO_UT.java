package com.redshiftsoft.tesla.dao.validation;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collection;

import static org.junit.Assert.assertEquals;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/com/redshiftsoft/tesla/dao-context.xml"})
public class ValidationDAO_UT {

    @Resource
    private ValidationDAO validationDAO;


    @Test
    public void doValidations() {
        Collection<ValidationResult> results = validationDAO.doValidations();

        assertEquals(10, results.size());
    }
}
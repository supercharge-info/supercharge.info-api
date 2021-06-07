package com.redshiftsoft.tesla.dao.dbinfo;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.assertTrue;


@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class DBInfoDAO_UT {

    @Resource
    private DBInfoDAO infoDAO;

    @Test
    public void testGetLastModified() {
        long instant = infoDAO.getLastModified();

        long modifiedDiff = System.currentTimeMillis() - instant;
        assertTrue(modifiedDiff > 1000L);
        assertTrue(modifiedDiff < 1000L * 60L * 60L * 24L * 365L);
    }

    @Test
    public void getLastModifiedCached() {
        long instant = infoDAO.getLastModifiedCached();

        long modifiedDiff = System.currentTimeMillis() - instant;
        assertTrue(modifiedDiff > 1000L);
        assertTrue(modifiedDiff < 1000L * 60L * 60L * 24L * 365L);

    }

}
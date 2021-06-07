package com.redshiftsoft.tesla.dao.sitestallcount;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@Rollback(value = true)
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class SiteStallCountDAO_UT {

    @Resource
    private SiteStallCountDAO siteStallCountDAO;

    @Test
    public void recordCurrentStallCount() {

        // given
        int currentCount = siteStallCountDAO.getCurrentStallCount();
        assertTrue(currentCount > 0);

        // when
        siteStallCountDAO.recordCurrentStallCount();

        // then
        assertEquals(currentCount, siteStallCountDAO.getLatestCount());
    }

    @Test
    public void recordCurrentStallCount_verifyDoesNotThrowOnSecondInsertSameDay() {
        // when
        siteStallCountDAO.recordCurrentStallCount();
        siteStallCountDAO.recordCurrentStallCount();
        siteStallCountDAO.recordCurrentStallCount();

        // then
        assertEquals(siteStallCountDAO.getCurrentStallCount(), siteStallCountDAO.getLatestCount());
    }


    @Test
    public void getCounts() {

        // given
        siteStallCountDAO.recordCurrentStallCount();

        // when
        List<StallCount> counts = siteStallCountDAO.getCounts();

        // then
        assertFalse(counts.isEmpty());
        StallCount lastCount = null;
        // then -- assert sorted by date ascending
        for (StallCount sc : counts) {
            assertTrue(sc.getStallCount() > 0);
            if (lastCount != null) {
                assertTrue(sc.getDate().isAfter(lastCount.getDate()));
            }
            lastCount = sc;
        }

    }

}
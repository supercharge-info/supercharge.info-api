package com.redshiftsoft.tesla.web.scheduled;

import com.redshiftsoft.tesla.dao.sitestallcount.SiteStallCountDAO;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.logging.Logger;

@Component
public class StallCountScheduled {

    private static final Logger LOG = Logger.getLogger(StallCountScheduled.class.getName());

    @Resource
    private SiteStallCountDAO siteStallCountDAO;

    /**
     * Scheduled at two times:
     * <p>
     * 22:10:30 EST = 23:10:30 CST
     * 22:59:30 EST = 23:59:30 CST
     * <p>
     * Two just so that we don't miss recording in the unlikely event that we are deploying during on time.
     * <p>
     * The cron expression is parsed during spring context initialization and an exception thrown if it is invalid.
     */
    @Scheduled(cron = "30 10,59 22 * * *")
    @Transactional
    public void go() {
        LOG.info("recording stall count: START");
        siteStallCountDAO.recordCurrentStallCount();
        LOG.info("recording stall count: FINISHED");
    }

}

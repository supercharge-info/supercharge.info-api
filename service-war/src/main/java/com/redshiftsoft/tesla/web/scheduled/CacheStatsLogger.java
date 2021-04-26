package com.redshiftsoft.tesla.web.scheduled;

import com.google.common.cache.LoadingCache;
import com.redshiftsoft.tesla.dao.user.User;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Component
public class CacheStatsLogger {

    private static final Logger LOG = Logger.getLogger(CacheStatsLogger.class.getName());

    private final LoadingCache<String, User> cache;

    public CacheStatsLogger(@Qualifier("userFilterCache") LoadingCache<String, User> cache) {
        this.cache = cache;
    }

    @Scheduled(fixedDelay = 1000L * 60L * 2L, initialDelay = 1000L * 60L * 2L)
    public void log() {
        LOG.info(cache.stats().toString());
    }

}

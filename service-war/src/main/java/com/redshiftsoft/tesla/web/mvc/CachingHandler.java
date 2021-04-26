package com.redshiftsoft.tesla.web.mvc;


import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.LongAdder;
import java.util.function.Supplier;
import java.util.logging.Logger;

import static java.lang.String.format;
import static java.lang.System.currentTimeMillis;

public class CachingHandler<T> {

    private static final Logger LOG = Logger.getLogger(CachingHandler.class.getName());

    private final Supplier<List<T>> supplier;
    private final DBInfoDAO dbInfoDAO;
    private final String cacheName;
    private final AtomicReference<CacheAge> cacheAgeRef = new AtomicReference<>(new CacheAge(0L, 0L));

    private final LongAdder hitCount = new LongAdder();
    private final LongAdder refreshCount = new LongAdder();

    /* Initialize to non-null value: else threads that fails refresh check (while another thread is refreshing the
     * first time) will return null values. */
    private List<T> cachedValues = new ArrayList<>();

    public CachingHandler(DBInfoDAO dbInfoDAO, String cacheName, Supplier<List<T>> supplier) {
        this.dbInfoDAO = dbInfoDAO;
        this.cacheName = cacheName;
        this.supplier = supplier;
    }

    public List<T> getValues() {
        long startTime = currentTimeMillis();
        refreshCacheIfNecessary();
        log("SERVE", hitCount, startTime);
        return cachedValues;
    }

    /**
     * Set the last DB refresh time to 0, causing the cache to be expired.
     */
    public void reset() {
        CacheAge current;
        do {
            current = cacheAgeRef.get();
        } while (!cacheAgeRef.compareAndSet(current, new CacheAge(0L, current.getLastDBChange())));
    }

    private void refreshCacheIfNecessary() {
        CacheAge currentCacheAge = cacheAgeRef.get();
        long newDBLastModified = dbInfoDAO.getLastModifiedCached();
        if (newDBLastModified > currentCacheAge.getLastDBChange() || currentCacheAge.isExpired()) {
            CacheAge newCacheAge = new CacheAge(currentTimeMillis(), newDBLastModified);
            if (cacheAgeRef.compareAndSet(currentCacheAge, newCacheAge)) {
                refreshAllValues();
            }
        }
    }

    private void refreshAllValues() {
        long startTime = currentTimeMillis();
        cachedValues = supplier.get();
        log("REFRESH", refreshCount, startTime);
    }

    private void log(String cacheAction, LongAdder actionCounter, long startTime) {
        actionCounter.increment();
        LOG.info(format("CACHE: name=%s; action=%s, count=%,d; cache size=%,d; time=%,d ms; cacheAge=%s",
                cacheName,
                cacheAction,
                actionCounter.sum(),
                cachedValues.size(),
                currentTimeMillis() - startTime,
                cacheAgeRef.get())
        );
    }

}

package com.redshiftsoft.tesla.web.mvc;


import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.TimeUnit;

import static java.lang.System.currentTimeMillis;

/**
 * Groups together the two fields upon which the life of our cache depends so that they can be updated (or not) atomically.
 * <p>
 * lastDBChange - The last time the DB changed.  If we see the database change after this time then our cache is expired
 * and should be refreshed.
 * <p>
 * lastRefresh - The last time we refreshed the cache (for any reason).  We expire the cache after a fixed amount
 * of time (even if the DB has not changed) so that we recalculate date/time fields that come from SQL expressions.
 */
public class CacheAge {

    private static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss Z");
    private static final ZoneId ZONE_ID = ZoneId.of("America/Chicago");
    private static final long MAX_CACHE_AGE_MS = TimeUnit.HOURS.toMillis(3);

    private final long lastDBChange;
    private final long lastRefresh;

    public CacheAge(long lastRefresh, long lastDBChange) {
        this.lastRefresh = lastRefresh;
        this.lastDBChange = lastDBChange;
    }

    public long getLastDBChange() {
        return lastDBChange;
    }

    public boolean isExpired() {
        return getCacheAgeMs() > MAX_CACHE_AGE_MS;
    }

    private long getCacheAgeMs() {
        return currentTimeMillis() - lastRefresh;
    }

    @Override
    public boolean equals(Object object) {
        return this == object ||
                object instanceof CacheAge &&
                        lastDBChange == ((CacheAge) object).lastDBChange &&
                        lastRefresh == ((CacheAge) object).lastRefresh;
    }

    @Override
    public int hashCode() {
        return 31 * ((int) (lastDBChange ^ (lastDBChange >>> 32))) + (int) (lastRefresh ^ (lastRefresh >>> 32));
    }

    @Override
    public String toString() {
        return "CacheAge{" +
                "cacheAgeSec=" + (getCacheAgeMs() / 1000L) +
                "; lastDBChange=" + DATE_TIME_FORMATTER.format(Instant.ofEpochMilli(lastDBChange).atZone(ZONE_ID)) +
                '}';
    }
}

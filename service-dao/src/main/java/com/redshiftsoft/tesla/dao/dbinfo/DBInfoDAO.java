package com.redshiftsoft.tesla.dao.dbinfo;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.util.NumberUtils;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

import static java.lang.String.format;
import static java.lang.System.currentTimeMillis;

/**
 * Keeps track of when the DB was last modified.
 */
@Component
public class DBInfoDAO extends BaseDAO {

    private static final Logger LOG = Logger.getLogger(DBInfoDAO.class.getName());
    private static final long CACHE_TIME_MILLIS = TimeUnit.SECONDS.toMillis(5);

    private final AtomicLong lastModified = new AtomicLong(0L);
    private final AtomicLong lastChecked = new AtomicLong(0L);

    /**
     * Returns last-modified from the DB, but only goes to DB every 10 seconds.
     */
    public long getLastModifiedCached() {
        if (isCacheExpired()) {
            updateLastModified();
        }
        return lastModified.get();
    }

    /**
     * Manually set the last modified date the the current date.  Do this when we have made a DB modification
     * that can't be detected by this class (manually delete a row via SQL, for example).
     */
    public void setLastModifiedToNow() {
        lastModified.set(currentTimeMillis());
    }

    private boolean isCacheExpired() {
        long elapsedMsSinceLastChecked = currentTimeMillis() - lastChecked.get();
        return elapsedMsSinceLastChecked > CACHE_TIME_MILLIS;
    }

    private synchronized void updateLastModified() {
        if (isCacheExpired()) {
            long newLastModified = getLastModified();
            long oldLastModified = lastModified.get();
            if (newLastModified > oldLastModified) {
                lastModified.set(newLastModified);
                LOG.info(format("" +
                                "*** DB CHANGE DETECTED, " +
                                "old lastModified = '%s', " +
                                "new lastModified='%s'",
                        new Date(oldLastModified), new Date(newLastModified)));
            }
            lastChecked.set(currentTimeMillis());
        }
    }

    /**
     * Get the last time the content of the DB was modified.
     */
    protected long getLastModified() {
        Timestamp d1 = getJdbcTemplate().queryForObject("select max(modified_date) from address", Timestamp.class);
        Timestamp d2 = getJdbcTemplate().queryForObject("select max(modified_date) from site", Timestamp.class);
        Timestamp d3 = getJdbcTemplate().queryForObject("select max(modified_date) from changelog", Timestamp.class);
        Timestamp d4 = getJdbcTemplate().queryForObject("select max(modified_date) from country", Timestamp.class);
        Timestamp d5 = getJdbcTemplate().queryForObject("select max(modified_date) from region", Timestamp.class);
        return NumberUtils.max(t(d1), t(d2), t(d3), t(d4), t(d5));
    }

    private static long t(Timestamp d) {
        return (d == null ? 0 : d.getTime());
    }

}
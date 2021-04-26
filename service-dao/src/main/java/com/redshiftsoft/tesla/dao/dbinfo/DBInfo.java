package com.redshiftsoft.tesla.dao.dbinfo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DBInfo {

    private static final String DATE_FORMAT = "MMM dd hh:mm a zzz";

    private long lastModified;

    public DBInfo(long lastModified) {
        this.lastModified = lastModified;
    }

    public String getLastModifiedString() {
        return new SimpleDateFormat(DATE_FORMAT).format(new Date(lastModified));
    }

    public long getLastModified() {
        return lastModified;
    }

    public void setLastModified(long lastModified) {
        this.lastModified = lastModified;
    }
}

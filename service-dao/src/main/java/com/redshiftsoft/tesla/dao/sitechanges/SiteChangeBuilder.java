package com.redshiftsoft.tesla.dao.sitechanges;

import com.google.common.collect.Lists;

import java.time.Instant;
import java.util.List;

public class SiteChangeBuilder {

    private final int siteId;
    private final int userId;
    private final int version;
    private final Instant changeDate;

    private final List<SiteChange> changeList = Lists.newArrayList();

    public SiteChangeBuilder(int siteId, int userId, int version, Instant changeDate) {
        this.siteId = siteId;
        this.userId = userId;
        this.version = version;
        this.changeDate = changeDate;
    }

    public void add(String fieldName, String oldValue, String newValue) {
        this.changeList.add(new SiteChange(siteId, userId, version, fieldName, oldValue, newValue, changeDate));
    }

    public List<SiteChange> getChangeList() {
        return changeList;
    }
}

package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.util.RandomUtils;

import java.time.Instant;

class RandomChangeLog {

    private static final RandomUtils random = RandomUtils.fast();

    public static ChangeLog randomChangeLog(int siteId) {
        ChangeLog changeLogIn = new ChangeLog();
        changeLogIn.setSiteId(siteId);
        changeLogIn.setDate(Instant.ofEpochMilli(random.getLong(1, 1_000_000_000)));
        changeLogIn.setChangeType(random.getElement(ChangeType.values()));
        changeLogIn.setSiteStatus(random.getElement(SiteStatus.values()));
        return changeLogIn;
    }
}

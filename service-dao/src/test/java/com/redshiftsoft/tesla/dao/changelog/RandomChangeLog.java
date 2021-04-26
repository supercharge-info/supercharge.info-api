package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.tesla.dao.site.SiteStatus;
import kdw.common.math.RandomUtils;

import java.time.Instant;

class RandomChangeLog {

    private static final RandomUtils random = RandomUtils.fast();

    public static ChangeLog randomChangeLog() {
        ChangeLog changeLogIn = new ChangeLog();
        changeLogIn.setSiteId(110);
        changeLogIn.setDate(Instant.ofEpochMilli(random.getLong(1, 1_000_000_000)));
        changeLogIn.setChangeType(random.getElement(ChangeType.values()));
        changeLogIn.setSiteStatus(random.getElement(SiteStatus.values()));
        return changeLogIn;
    }
}

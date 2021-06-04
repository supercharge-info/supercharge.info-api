package com.redshiftsoft.tesla.dao;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.user.UserRouteWaypoint;
import com.redshiftsoft.util.RandomUtils;

import java.util.List;

public class TestUserRouteWaypoints {

    private static final RandomUtils random = RandomUtils.fast();

    public static UserRouteWaypoint create() {

        String name = random.getString(1, 90, 'a', 'z');
        return new UserRouteWaypoint(name,
                random.getDouble(-90d, 90d), random.getDouble(-180d, 180d));

    }


    public static List<UserRouteWaypoint> create(int howMany) {
        List<UserRouteWaypoint> list = Lists.newArrayList();
        for (int i = 0; i < howMany; i++) {
            list.add(create());
        }
        return list;
    }
}

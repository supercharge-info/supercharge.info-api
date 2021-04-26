package com.redshiftsoft;

import kdw.common.math.RandomUtils;

public class R {

    public static final RandomUtils r = RandomUtils.fast();

    public static String randomUsername() {
        return "it_" + r.getString(10, 20, 'a', 'z');
    }

    public static String randomPassword() {
        return r.getString(8, 40, 'a', 'z');
    }

    public static String randomEmail() {
        return "it_" + r.getString(1, 20, 'a', 'z') + "@" + r.getString(1, 20, 'a', 'z') + ".com";
    }


}

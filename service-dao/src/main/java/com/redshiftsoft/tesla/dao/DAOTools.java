package com.redshiftsoft.tesla.dao;

import kdw.common.string.StringTools;

public class DAOTools {

    /**
     * Convert to null or trimmed string.
     */
    public static String string(String string) {
        if (StringTools.isEmpty(string)) {
            return null;
        }
        return string.trim();
    }

}

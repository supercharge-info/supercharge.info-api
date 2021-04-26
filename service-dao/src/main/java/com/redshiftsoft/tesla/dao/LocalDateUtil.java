package com.redshiftsoft.tesla.dao;

import java.sql.Timestamp;
import java.time.*;
import java.util.Date;

public class LocalDateUtil {

    private static final ZoneId ZONE_ID = ZoneId.of("America/Chicago");

    /**
     * To a date appropriate for storing with JDBC.
     */
    public static java.sql.Timestamp toSQLDate(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        LocalDateTime localDateTime = localDate.atTime(12, 0);
        ZonedDateTime zonedDateTime = localDateTime.atZone(ZONE_ID);
        return new Timestamp(zonedDateTime.toInstant().toEpochMilli());
    }

    /**
     * From a date returned by JDBC's rs.getDate()
     */
    public static LocalDate toLocalDate(Date date) {
        if(date == null) {
            return null;
        }
        return toLocalDateTime(date).toLocalDate();
    }

    /**
     * From a date returned by JDBC's rs.getDate()
     */
    public static LocalDateTime toLocalDateTime(Date date) {
        if (date == null) {
            return null;
        }
        Instant instant = Instant.ofEpochMilli(date.getTime());
        return LocalDateTime.ofInstant(instant, ZONE_ID);
    }

}

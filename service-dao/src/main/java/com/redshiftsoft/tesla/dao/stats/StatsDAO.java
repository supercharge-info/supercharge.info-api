package com.redshiftsoft.tesla.dao.stats;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.util.StringTools;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Component
public class StatsDAO extends BaseDAO {

    // Just needs to be something that's a leap year, used to cause YoY comparisons to overlap
    private final Integer YEAR = 2020;

    private LocalDate longToLocalDate(Long ts) {
        return LocalDate.ofEpochDay(ts / 86400000);
    }

    private Long localDateToLong(LocalDate date) {
        return date.toEpochDay() * 86400000;
    }

    private String buildToDateSql(String since, String table, String dateField, String filter, String fields) {
        if (StringTools.isEmpty(fields)) {
            fields = "";
        } else {
            fields = fields + ",";
        }
        if (StringTools.isEmpty(filter)) {
            filter = "";
        } else {
            filter = " WHERE " + filter;
        }

        return  "WITH " + table + "s AS (\n" +
                    "SELECT day, " + since + ", count(*) cnt\n" +
                    "FROM (SELECT " + fields + "\n" +
                        "date_trunc('day', min(" + dateField + ")) as day,\n" +
                        "date_trunc('" + since + "', " + dateField + ") as " + since + "\n" +
                        "FROM " + table + filter + "\n" +
                        "GROUP BY " + fields + "date_trunc('" + since + "', " + dateField + ")) i\n" +
                    "GROUP BY day, " + since + ")\n" +
                "SELECT a.day, sum(b.cnt) count_since\n" +
                "FROM " + table + "s a join " + table + "s b on a." + since + " = b." + since + " and a.day >= b.day\n" +
                "GROUP BY a." + since + ", a.day ORDER BY a.day;";
    }

    private TreeMap<Integer, List<Long[]>> mapStats(List<Map<String, Object>> rowList) {
        TreeMap<Integer, List<Long[]>> stats = new TreeMap<>();
        Integer year = null;
        for (Map<String, Object> row : rowList) {
            LocalDate date = longToLocalDate(((Timestamp) row.get("day")).getTime());
            Long count = ((BigDecimal) row.get("count_since")).longValue();
            if (!((Integer)date.getYear()).equals(year)) {
                year = date.getYear();
                stats.put(year, new ArrayList<>());
            }
            stats.get(year).add(new Long[] { localDateToLong(date.withYear(YEAR)), count });
        }
        return stats;
    }

    private TreeMap<Integer, List<Long[]>> extendStats(TreeMap<Integer, List<Long[]>> stats, LocalDate start) {
        Integer initial;

        // Insert into start of stats
        if (stats.size() == 0) {
            // No stats data
            if (start == null) {
                return stats;
            } else {
                initial = start.getYear();
                stats.put(initial, new ArrayList<>());
                stats.get(initial).add(new Long[] { localDateToLong(start.withYear(YEAR)), 0L });
            }
        } else {
            initial = stats.firstKey();
            if (start != null) {
                if (start.getYear() < initial) {
                    initial = start.getYear();
                    stats.put(initial, new ArrayList<>());
                    stats.get(initial).add(new Long[] { localDateToLong(start.withYear(YEAR)), 0L });
                } else if (start.withYear(YEAR).isBefore(longToLocalDate(stats.get(initial).get(0)[0]))) {
                    stats.get(initial).add(0, new Long[] { localDateToLong(start.withYear(YEAR)), 0L });
                }
            }
        }

        // Between years fill-in
        for(Integer cur : stats.keySet()) {
            if (!initial.equals(cur) && YEAR.equals(longToLocalDate(stats.get(cur).get(0)[0]).minusDays(1).getYear())) {
                // BOY
                stats.get(cur).add(0, new Long[] { localDateToLong(LocalDate.of(YEAR, 1, 1)), 0L });
            }
            if (cur.equals(LocalDate.now().getYear())) {
                // This year
                if (longToLocalDate(stats.get(cur).get(stats.get(cur).size() - 1)[0]).isBefore(LocalDate.now().withYear(YEAR))) {
                    // End of list is before today
                    stats.get(cur).add(new Long[] { localDateToLong(LocalDate.now().withYear(YEAR)), stats.get(cur).get(stats.get(cur).size() - 1)[1] });
                }
            } else if (YEAR.equals(longToLocalDate(stats.get(cur).get(stats.get(cur).size() - 1)[0]).plusDays(1).getYear())) {
                // EOY
                stats.get(cur).add(new Long[] { localDateToLong(LocalDate.of(YEAR, 12, 31)), stats.get(cur).get(stats.get(cur).size() - 1)[1] });
            }
        }

        return stats;
    }

    public Map<Integer, List<Long[]>> getYtdEdits(int userId) {
        String sql = buildToDateSql("year", "site_change", "change_date", "user_id = " + userId, "site_id");
        TreeMap<Integer, List<Long[]>> stats = mapStats(getJdbcTemplate().queryForList(sql));

        sql = "select created_date " +
                "from user_role " +
                "join roles using (role_id) " +
                "where user_id=? " +
                "and role_name = 'editor'";
        LocalDate new_editor = longToLocalDate((getJdbcTemplate().queryForObject(sql, Timestamp.class, userId)).getTime());

        return extendStats(stats, new_editor);
    }

}

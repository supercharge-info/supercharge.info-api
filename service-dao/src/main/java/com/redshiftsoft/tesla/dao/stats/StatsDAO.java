package com.redshiftsoft.tesla.dao.stats;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.util.StringTools;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Component
public class StatsDAO extends BaseDAO {

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

    private Map<LocalDate, Integer> mapStats(List<Map<String, Object>> rowList) {
        Map<LocalDate, Integer> stats = new TreeMap<>();
        for (Map<String, Object> row : rowList) {
            LocalDate date = LocalDateTime.ofInstant(Instant.ofEpochMilli(((Timestamp) row.get("day")).getTime()), ZoneId.systemDefault()).toLocalDate();
            Integer count = ((BigDecimal) row.get("count_since")).intValue();
            stats.put(date, count);
        }
        return stats;
    };

    public Map<LocalDate, Integer> getYtdEdits(int userId) {
        String sql = buildToDateSql("year", "site_change", "change_date", "user_id = " + userId, "site_id");
        return mapStats(getJdbcTemplate().queryForList(sql));
    }

}

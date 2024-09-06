package com.redshiftsoft.tesla.dao.sitestallcount;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.LocalDateUtil;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SiteStallCountDAO extends BaseDAO {

    public int getCurrentStallCount() {
        String SQL = "select sum(stall_count) from site where enabled=true and status in ('OPEN','EXPANDING')";
        return getJdbcTemplate().queryForObject(SQL, Integer.class);
    }

    public void recordCurrentStallCount() {
        int count = getCurrentStallCount();
        String SQL = "" +
                "INSERT INTO site_stall_count (day, count) VALUES (now(), ?) " +
                "ON CONFLICT (day) DO UPDATE SET count = ?";
        getJdbcTemplate().update(SQL, count, count);
    }

    public int getLatestCount() {
        String SQL = "select count from site_stall_count order by day desc limit 1";
        return getJdbcTemplate().queryForObject(SQL, Integer.class);
    }

    public List<StallCount> getCounts() {
        String SQL = "" +
                "select date_part('year', day) || '-' || date_part('doy', day), max(day), max(count) \n" +
                "from site_stall_count\n" +
                "group by date_part('year', day) || '-' || date_part('doy', day)\n" +
                "order by max(day) asc;";

        return getJdbcTemplate().query(SQL, STALL_COUNT_ROW_MAPPER);
    }


    private static final RowMapper<StallCount> STALL_COUNT_ROW_MAPPER = (resultSet, i) -> {
        StallCount count = new StallCount();
        count.setDate(LocalDateUtil.toLocalDate(resultSet.getDate(2)));
        count.setStallCount(resultSet.getInt(3));
        return count;
    };

}

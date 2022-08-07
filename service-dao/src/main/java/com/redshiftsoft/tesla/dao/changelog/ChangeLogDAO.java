package com.redshiftsoft.tesla.dao.changelog;


import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class ChangeLogDAO extends BaseDAO {

    private static final ChangeLogRowMapper CHANGE_LOG_ROW_MAPPER = new ChangeLogRowMapper();

    public ChangeLog getById(int id) {
        String sql = ChangeLogRowMapper.SELECT + " where cl.id=?";
        return getJdbcTemplate().queryForObject(sql, CHANGE_LOG_ROW_MAPPER, id);
    }

    public List<ChangeLog> getList() {
        return getList(Integer.MAX_VALUE);
    }

    public List<ChangeLog> getList(int limit) {
        String sql = ChangeLogRowMapper.SELECT + " order by cl.change_date desc, cl.id desc limit ?";
        return getJdbcTemplate().query(sql, CHANGE_LOG_ROW_MAPPER, limit);
    }

    public Map<Instant, SiteStatus> getSiteList(int siteId) {
        String sql = "select change_date, site_status from changelog where site_id = ? order by change_date";
        List<Map<String, Object>> rowList = getJdbcTemplate().queryForList(sql, siteId);

        Map<Instant, SiteStatus> resultMap = new HashMap<>();
        for (Map<String, Object> row : rowList) {
            Instant changeDate = Instant.ofEpochMilli(((Timestamp) row.get("change_date")).getTime());
            SiteStatus siteStatus = SiteStatus.valueOf((String) row.get("site_status"));
            resultMap.put(changeDate, siteStatus);
        }
        return resultMap;
    }

    public void insert(ChangeLog changeLog) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getJdbcTemplate().update(new InsertChangeLogPreparedStatementCreator(changeLog), keyHolder);
        changeLog.setId((Integer) keyHolder.getKeys().get("id"));
    }

    public void delete(int changeLogId) {
        String DELETE_SQL = "delete from changelog where id = ?";
        getJdbcTemplate().update(DELETE_SQL, changeLogId);
    }

    public boolean exists(Integer changeLogId) {
        String sql = "select count(*) from changelog where id=?";
        Long count = getJdbcTemplate().queryForObject(sql, Long.class, changeLogId);
        return count != 0;
    }

    /* Returns map <siteId, days at current status> */
    public Map<Integer, Integer> getStatusDaysMap() {
        String sql = "" +
                "select s.site_id," +
                "       s.status," +
                "       DATE_PART('day', now() - (select max(change_date) from changelog c where s.site_id = c.site_id)) as status_count " +
                "from site s " +
                "where s.status != 'OPEN'::SITE_STATUS_TYPE";

        List<Map<String, Object>> rowList = getJdbcTemplate().queryForList(sql);
        Map<Integer, Integer> resultMap = new HashMap<>();
        for (Map<String, Object> row : rowList) {
            Integer siteId = (Integer) row.get("site_id");
            Double statusDays = (Double) row.get("status_count");
            resultMap.put(siteId, statusDays == null ? 0 : (statusDays.intValue()));
        }
        return resultMap;
    }


}

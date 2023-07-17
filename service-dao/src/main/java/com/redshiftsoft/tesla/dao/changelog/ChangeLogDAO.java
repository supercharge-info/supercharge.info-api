package com.redshiftsoft.tesla.dao.changelog;


import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.springframework.jdbc.core.RowMapper;
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
        String sql = "select change_date, site_status from changelog where site_id = ? order by change_date, id";
        List<Map<String, Object>> rowList = getJdbcTemplate().queryForList(sql, siteId);

        Map<Instant, SiteStatus> resultMap = new HashMap<>();
        for (Map<String, Object> row : rowList) {
            Instant changeDate = Instant.ofEpochMilli(((Timestamp) row.get("change_date")).getTime());
            SiteStatus siteStatus = SiteStatus.valueOf((String) row.get("site_status"));
            resultMap.put(changeDate, siteStatus);
        }
        return resultMap;
    }

    public List<ChangeLogEdit> getChangeLogEdits(int siteId) {
        String sql = "select changelog.*, username from changelog left join users using (user_id) where site_id = ? order by change_date desc, id desc";
        return getJdbcTemplate().query(sql, CHANGE_LOG_EDIT_ROW_MAPPER, siteId);
    }

    public void insert(ChangeLogEdit changeLog) {
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

    public int update(int id, Instant date, SiteStatus status, boolean notify, int userId) {
        String UPDATE_SQL = "UPDATE changelog SET change_date = ?, site_status = ?::SITE_STATUS_TYPE, notify = ?, " +
                            "modified_date = now(), user_id = ? WHERE id = ? RETURNING site_id";
        return getJdbcTemplate().queryForObject(UPDATE_SQL, Integer.class, toTimestamp(date), status.toString(), notify, userId, id);
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

    public List<ChangeLogEdit> setFirstToAdded(int siteId) {
        String UPDATE_SQL = "UPDATE changelog o SET change_type = " +
                                    "CASE (select i.id from changelog i " +
                                            "where i.site_id = o.site_id " +
                                            "order by i.change_date, i.id limit 1) " +
                                    "WHEN id THEN 'ADD'::CHANGE_TYPE " +
                                    "ELSE 'UPDATE'::CHANGE_TYPE END WHERE site_id = ? " +
                            "RETURNING o.*, (select username from users where user_id = o.user_id)";
        return getJdbcTemplate().query(UPDATE_SQL, CHANGE_LOG_EDIT_ROW_MAPPER, siteId);
    }

    private static final RowMapper<ChangeLogEdit> CHANGE_LOG_EDIT_ROW_MAPPER = (rs, rowNum) -> {
        ChangeLogEdit cl = new ChangeLogEdit();

        int c = 1;

        cl.setId(rs.getInt(c++));
        cl.setSiteId(rs.getInt(c++));
        cl.setDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        cl.setChangeType(ChangeType.valueOf(rs.getString(c++)));
        cl.setSiteStatus(SiteStatus.valueOf(rs.getString(c++)));
        cl.setModifiedInstant(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        cl.setNotify(rs.getBoolean(c++));
        cl.setUserId(rs.getInt(c++));
        if (rs.getMetaData().getColumnCount() >= c) {
            cl.setUsername(rs.getString(c));
        }

        return cl;
    };


}

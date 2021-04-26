package com.redshiftsoft.tesla.dao.feature;

import com.redshiftsoft.db.jdbc.Statements;
import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.LocalDateUtil;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Component
public class FeatureDAO extends BaseDAO {

    /**
     * Insert feature.
     */
    public void insert(Feature feature) {
        try {
            String SQL = "insert into feature values(DEFAULT,?,?,NOW(),?)";
            PreparedStatement stat = getPreparedStatementWithKeys(SQL);
            stat.setString(1, feature.getTitle());
            stat.setTimestamp(2, LocalDateUtil.toSQLDate(feature.getAddedDate()));
            stat.setString(3, feature.getDescription());
            stat.execute();
            Integer generatedId = Statements.getIntegerGeneratedKey(stat);
            feature.setId(generatedId);
        } catch (SQLException e) {
            logAndThrowUnchecked(e);
        }
    }

    /**
     * Update feature.
     */
    public void update(Feature feature) {
        String SQL = "update feature set title=?,description=?,added_date=?,modified_date=now() where feature_id=?";
        getJdbcTemplate().update(SQL, feature.getTitle(), feature.getDescription(), feature.getAddedDate(), feature.getId());
    }

    /**
     * Get feature by Id.
     */
    public Feature getById(int featureId) {
        String SELECT_SQL = "SELECT * FROM feature WHERE feature_id=?";
        return getJdbcTemplate().queryForObject(SELECT_SQL, FEATURE_ROW_MAPPER, featureId);
    }

    /**
     * Get feature by Id.
     */
    public Feature getMaxNumber(int featureId) {
        String SELECT_SQL = "SELECT * FROM feature WHERE feature_id=?";
        return getJdbcTemplate().queryForObject(SELECT_SQL, FEATURE_ROW_MAPPER, featureId);
    }

    /**
     * List all
     */
    public List<Feature> list() {
        String SELECT_SQL = "SELECT * FROM feature order by feature_id desc";
        return getJdbcTemplate().query(SELECT_SQL, FEATURE_ROW_MAPPER);
    }

    /**
     * Delete
     */
    public int delete(int featureId) {
        String DELETE_SQL = "DELETE FROM feature WHERE feature_id=?";
        return getJdbcTemplate().update(DELETE_SQL, featureId);
    }

    public int getLatestFeatureId() {
        return (int) super.getCount("select max(feature_id) from feature");
    }

    private static final RowMapper<Feature> FEATURE_ROW_MAPPER = (rs, rowNum) -> {
        Feature feature = new Feature();
        feature.setId(rs.getInt(1));
        feature.setTitle(rs.getString(2));
        feature.setAddedDate(LocalDateUtil.toLocalDate(rs.getDate(3)));
        feature.setModifiedDate(LocalDateUtil.toLocalDateTime(rs.getTimestamp(4)));
        feature.setDescription(rs.getString(5));
        return feature;
    };


}

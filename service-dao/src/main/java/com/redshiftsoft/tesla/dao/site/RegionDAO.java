package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.function.Supplier;

@Component
public class RegionDAO extends BaseDAO implements Supplier<List<Region>> {

    private static final RegionRowMapper REGION_ROW_MAPPER = new RegionRowMapper();

    public List<Region> getAll() {
        return getJdbcTemplate().query(RegionRowMapper.SELECT_ALL, REGION_ROW_MAPPER);
    }

    @Override
    public List<Region> get() {
        return getAll();
    }


    public Region getById(int regionId) {
        return getJdbcTemplate().queryForObject("SELECT * FROM region WHERE region_id=?", REGION_ROW_MAPPER, regionId);
    }

    private static class RegionRowMapper implements RowMapper<Region> {

        private static final String SELECT_ALL = "SELECT * FROM region ORDER BY name ASC";

        @Override
        public Region mapRow(ResultSet rs, int rowNum) throws SQLException {
            Region region = new Region();
            int c = 1;
            region.setId(rs.getInt(c++));
            region.setName(rs.getString(c));
            return region;
        }
    }

}

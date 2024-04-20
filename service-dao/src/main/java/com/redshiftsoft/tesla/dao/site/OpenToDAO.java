package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.function.Supplier;

@Component
public class OpenToDAO extends BaseDAO implements Supplier<List<OpenTo>> {

    private static final OpenToRowMapper OPEN_TO_ROW_MAPPER = new OpenToRowMapper();

    public List<OpenTo> getAll() {
        return getJdbcTemplate().query(OpenToRowMapper.SELECT_ALL, OPEN_TO_ROW_MAPPER);
    }

    @Override
    public List<OpenTo> get() {
        return getAll();
    }


    public OpenTo getById(int openToId) {
        return getJdbcTemplate().queryForObject("SELECT * FROM open_to WHERE open_to_id=?", OPEN_TO_ROW_MAPPER, openToId);
    }

    private static class OpenToRowMapper implements RowMapper<OpenTo> {

        private static final String SELECT_ALL = "SELECT * FROM open_to ORDER BY open_to_id ASC";

        @Override
        public OpenTo mapRow(ResultSet rs, int rowNum) throws SQLException {
            OpenTo openTo = new OpenTo();
            int c = 1;
            openTo.setOpenToId(rs.getInt(c++));
            openTo.setName(rs.getString(c++));
            openTo.setDescription(rs.getString(c));
            return openTo;
        }
    }

}

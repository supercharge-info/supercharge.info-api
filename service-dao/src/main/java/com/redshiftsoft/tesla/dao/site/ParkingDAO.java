package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.function.Supplier;

@Component
public class ParkingDAO extends BaseDAO implements Supplier<List<Parking>> {

    private static final ParkingRowMapper PARKING_ROW_MAPPER = new ParkingRowMapper();

    public List<Parking> getAll() {
        return getJdbcTemplate().query(ParkingRowMapper.SELECT_ALL, PARKING_ROW_MAPPER);
    }

    @Override
    public List<Parking> get() {
        return getAll();
    }


    public Parking getById(int parkingId) {
        return getJdbcTemplate().queryForObject("SELECT * FROM parking WHERE parking_id=?", PARKING_ROW_MAPPER, parkingId);
    }

    private static class ParkingRowMapper implements RowMapper<Parking> {

        private static final String SELECT_ALL = "SELECT * FROM parking ORDER BY parking_id ASC";

        @Override
        public Parking mapRow(ResultSet rs, int rowNum) throws SQLException {
            Parking parking = new Parking();
            int c = 1;
            parking.setParkingId(rs.getInt(c++));
            parking.setName(rs.getString(c++));
            parking.setDescription(rs.getString(c));
            return parking;
        }
    }

}

package com.redshiftsoft.tesla.dao.site;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;

public class AddressRowMapper implements RowMapper<Address> {

    public static final String SQL = "" +
            "SELECT address.*, country.name, region.region_id, region.name " +
            "FROM address " +
            "JOIN country ON address.country_id = country.country_id " +
            "JOIN region  ON country.region_id  = region.region_id " +
            "WHERE address_id=?";

    private final int startCol;

    public AddressRowMapper(int startCol) {
        this.startCol = startCol;
    }

    @Override
    public Address mapRow(ResultSet rs, int rowNum) throws SQLException {
        Address address = new Address();
        int c = startCol;
        address.setId(rs.getInt(c++));
        address.setStreet(rs.getString(c++));
        address.setCity(rs.getString(c++));
        address.setState(rs.getString(c++));
        address.setZip(rs.getString(c++));
        address.setCountryId(rs.getInt(c++));
        address.setModifiedDate(Instant.ofEpochMilli(rs.getTimestamp(c++).getTime()));
        address.setVersion(rs.getInt(c++));
        address.setCountry(rs.getString(c++));
        address.setRegionId(rs.getInt(c++));
        address.setRegion(rs.getString(c));
        return address;
    }
}

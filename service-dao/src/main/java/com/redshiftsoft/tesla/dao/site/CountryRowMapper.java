package com.redshiftsoft.tesla.dao.site;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class CountryRowMapper implements RowMapper<Country> {

    private static final String SELECT_ALL = "" +
            "select country.*, region.name " +
            "from country " +
            "join region using (region_id)";

    public static final String SELECT_REFERENCED = SELECT_ALL +
            " where country.country_id in (select distinct country_id from address)" +
            " order by country.name asc";

    protected static final String SELECT_ALL_ORDERED = SELECT_ALL + " order by country.name asc";

    protected static final String SELECT_BY_ID = SELECT_ALL + " where country_id=?";

    @Override
    public Country mapRow(ResultSet rs, int rowNum) throws SQLException {
        Country country = new Country();
        int c = 1;
        country.setId(rs.getInt(c++));
        country.setName(rs.getString(c++));
        country.setCode(rs.getString(c++));
        country.setRegionId(rs.getInt(c++));
        country.setStateRequired(rs.getBoolean(c++));
        c++; // modified_date
        
        country.setPlugTPC(rs.getBoolean(c++));
        country.setPlugNACS(rs.getBoolean(c++));
        country.setPlugCCS1(rs.getBoolean(c++));
        country.setPlugCCS2(rs.getBoolean(c++));
        country.setPlugType2(rs.getBoolean(c++));
        country.setPlugGBT(rs.getBoolean(c++));

        country.setRegionName(rs.getString(c));
        return country;
    }
}

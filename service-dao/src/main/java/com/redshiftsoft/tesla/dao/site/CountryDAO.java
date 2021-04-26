package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CountryDAO extends BaseDAO {

    private static final CountryRowMapper COUNTRY_ROW_MAPPER = new CountryRowMapper();

    public Country getById(int id) {
        return getJdbcTemplate().queryForObject(CountryRowMapper.SELECT_BY_ID, COUNTRY_ROW_MAPPER, id);
    }

    public List<Country> getAll() {
        return getJdbcTemplate().query(CountryRowMapper.SELECT_ALL_ORDERED, COUNTRY_ROW_MAPPER);
    }

    public List<Country> getReferenced() {
        return getJdbcTemplate().query(CountryRowMapper.SELECT_REFERENCED, COUNTRY_ROW_MAPPER);
    }

}

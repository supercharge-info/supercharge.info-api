package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import java.time.Instant;

@Component
public class AddressDAO extends BaseDAO {

    private static final AddressRowMapper ROW_MAPPER = new AddressRowMapper(1);

    public void insert(Address address) {
        address.setVersion(1);
        address.setModifiedDate(Instant.now());
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getJdbcTemplate().update(new AddressInsertStatementCreator(address), keyHolder);
        Integer addressId = (Integer) keyHolder.getKeys().get("address_id");
        address.setId(addressId);
    }

    public void update(Address address) {
        getJdbcTemplate().update(new AddressUpdateStatementCreator(address));
    }

    public void delete(Integer addressId) {
        getJdbcTemplate().update("DELETE FROM address WHERE address_id=?", addressId);
    }

    public Address get(int addressId) {
        return getJdbcTemplate().queryForObject(AddressRowMapper.SQL, ROW_MAPPER, addressId);
    }

    public boolean exists(int addressId) {
        return getCount("select count(*) from address where address_id=?", addressId) > 0;
    }

}

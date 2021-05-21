package com.redshiftsoft.tesla.dao.site;

import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import static com.redshiftsoft.tesla.dao.DAOTools.string;

public class AddressUpdateStatementCreator implements PreparedStatementCreator {

    private static final String SQL = "" +
            "update address " +
            "set street=?,city=?,state=?,zip=?,country_id=?,modified_date=?,version=version+1 " +
            "where address_id=?";
    private final Address address;

    public AddressUpdateStatementCreator(Address address) {
        this.address = address;
    }

    @Override
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        PreparedStatement stat = con.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

        int c = 1;
        stat.setString(c++, string(address.getStreet()));
        stat.setString(c++, string(address.getCity()));
        stat.setString(c++, string(address.getState()));
        stat.setString(c++, string(address.getZip()));
        stat.setInt(c++, address.getCountryId());
        stat.setTimestamp(c++, new Timestamp(System.currentTimeMillis()));
        stat.setInt(c, address.getId());

        return stat;
    }


}

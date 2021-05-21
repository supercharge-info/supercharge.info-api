package com.redshiftsoft.tesla.dao.site;

import org.springframework.jdbc.core.PreparedStatementCreator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static com.redshiftsoft.tesla.dao.BaseDAO.toTimestamp;
import static com.redshiftsoft.tesla.dao.DAOTools.string;

public class AddressInsertStatementCreator implements PreparedStatementCreator {

    private static final String SQL = "insert into address values (DEFAULT,?,?,?,?,?,?,?)";
    private final Address address;

    public AddressInsertStatementCreator(Address address) {
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
        stat.setTimestamp(c++, toTimestamp(address.getModifiedDate()));
        stat.setInt(c, address.getVersion());

        return stat;
    }


}

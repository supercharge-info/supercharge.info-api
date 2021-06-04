package com.redshiftsoft.tesla.dao;

import com.redshiftsoft.tesla.dao.site.Address;
import com.redshiftsoft.util.RandomUtils;

public class TestAddressCreator {

    private static final RandomUtils random = RandomUtils.fast();

    public static Address randomAddress() {
        Address address = new Address();
        address.setStreet(random.getString(1, 50, 'a', 'z'));
        address.setCity(random.getString(1, 50, 'a', 'z'));
        address.setState(random.getString(1, 50, 'a', 'z'));
        address.setZip(random.getString(1, 50, 'a', 'z'));

        address.setCountry(random.getString(1, 50, 'a', 'z'));
        address.setCountryId(random.getInteger(0, Integer.MAX_VALUE));
        address.setRegion(random.getString(1, 50, 'a', 'z'));

        return address;
    }

}

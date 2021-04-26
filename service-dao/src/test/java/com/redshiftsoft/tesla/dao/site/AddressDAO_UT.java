package com.redshiftsoft.tesla.dao.site;


import com.redshiftsoft.tesla.dao.TestSiteCreator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.Assert.*;

@Transactional
@Rollback(value = true)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/com/redshiftsoft/tesla/dao-context.xml"})
public class AddressDAO_UT {

    @Resource
    private TestSiteCreator testSiteCreator;
    @Resource
    private AddressDAO addressDAO;

    @Test
    public void insert() {
        // given
        Address addressIn = testSiteCreator.randomAddress();

        // when
        addressDAO.insert(addressIn);

        // then
        Address addressOut = addressDAO.get(addressIn.getId());
        assertTrue(addressIn.getId() > 100);
        assertEquals(addressIn.getRegionId(), addressOut.getRegionId());
        assertEquals(addressIn.getCountryId(), addressOut.getCountryId());
        assertTrue((System.currentTimeMillis() - addressOut.getModifiedDate().toEpochMilli()) < 2000);
        assertEquals(addressIn, addressOut);
    }

    @Test
    public void update() {
        // given
        Address addressIn = testSiteCreator.randomAddress();
        addressDAO.insert(addressIn);

        // when
        addressDAO.update(Address.copyOf(addressIn));
        addressDAO.update(Address.copyOf(addressIn));
        addressDAO.update(Address.copyOf(addressIn));
        addressDAO.update(Address.copyOf(addressIn));

        // then
        Address addressOut = addressDAO.get(addressIn.getId());
        assertEquals(5, addressOut.getVersion());
        assertTrue(addressOut.getModifiedDate().isAfter(addressIn.getModifiedDate()));
        long diff = addressOut.getModifiedDate().toEpochMilli() - addressIn.getModifiedDate().toEpochMilli();
        assertTrue(diff < 2000);
    }

    @Test
    public void delete() {
        // given
        Address addressIn = testSiteCreator.randomAddress();
        addressDAO.insert(addressIn);
        Address addressOut = addressDAO.get(addressIn.getId());
        assertTrue(addressDAO.exists(addressIn.getId()));

        // when
        addressDAO.delete(addressOut.getId());

        // then
        assertFalse(addressDAO.exists(addressIn.getId()));
    }

}

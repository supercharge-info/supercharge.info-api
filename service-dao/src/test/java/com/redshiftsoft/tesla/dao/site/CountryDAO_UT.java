package com.redshiftsoft.tesla.dao.site;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.*;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/com/redshiftsoft/tesla/dao-context.xml"})
public class CountryDAO_UT {

    @Resource
    private CountryDAO countryDAO;

    @Test
    public void testGetAll() {
        List<Country> allCountries = countryDAO.getAll();
        assertTrue(allCountries.size() >= 29);

        Country country = allCountries.get(0);
        assertTrue(country.getId() >= 100);
        assertTrue(country.getRegionId() >= 100);
        assertEquals("Albania", country.getName());
        assertEquals("AL", country.getCode());
        assertEquals("Europe", country.getRegionName());
    }

    @Test
    public void getById() {
        Country country = countryDAO.getById(102);
        assertEquals(102, country.getId());
        assertEquals("AT", country.getCode());
        assertEquals("Austria", country.getName());
        assertEquals(101, country.getRegionId());
        assertEquals("Europe", country.getRegionName());
        assertFalse(country.isStateRequired());

        country = countryDAO.getById(101);
        assertEquals(101, country.getId());
        assertEquals("CA", country.getCode());
        assertEquals("Canada", country.getName());
        assertEquals(100, country.getRegionId());
        assertEquals("North America", country.getRegionName());
        assertTrue(country.isStateRequired());
    }


    @Test
    public void testGetReferenced() {
        List<Country> referencedCountries = countryDAO.getReferenced();
        List<Country> allCountries = countryDAO.getAll();
        assertTrue(referencedCountries.size() >= 16);
        assertTrue(referencedCountries.size() < allCountries.size());

        Country country = referencedCountries.get(0);
        assertTrue(country.getId() >= 100);
        assertEquals("Australia", country.getName());
        assertEquals("AU", country.getCode());
        assertEquals("Asia Pacific", country.getRegionName());
    }

}
package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class CountryDAO_UT {

    @Resource
    private CountryDAO countryDAO;

    @Resource
    private TestSiteSaver testSiteSaver;

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
        // given
        Site site1 = testSiteSaver.persistRandomSite();
        Site site2 = testSiteSaver.persistRandomSite();
        Site site3 = testSiteSaver.persistRandomSite();

        // when
        List<Country> referencedCountries = countryDAO.getReferenced();

        // then
        List<Country> allCountries = countryDAO.getAll();
        assertTrue(referencedCountries.size() >= 1);
        assertTrue(referencedCountries.size() < allCountries.size());

        List<Integer> refCountryIds = referencedCountries.stream().map(Country::getId).collect(Collectors.toList());
        assertTrue(refCountryIds.contains(site1.getAddress().getCountryId()));
        assertTrue(refCountryIds.contains(site2.getAddress().getCountryId()));
        assertTrue(refCountryIds.contains(site3.getAddress().getCountryId()));
    }

}
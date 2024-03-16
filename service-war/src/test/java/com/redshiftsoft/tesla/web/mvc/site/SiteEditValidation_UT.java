package com.redshiftsoft.tesla.web.mvc.site;


import com.redshiftsoft.tesla.dao.site.*;
import com.redshiftsoft.tesla.web.mvc.siteadmin.SiteEditDTO;
import com.redshiftsoft.tesla.web.mvc.siteadmin.SiteEditValidation;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class SiteEditValidation_UT {

    private CountryDAO countryDAO = Mockito.mock(CountryDAO.class);
    private SiteDAO siteDAO = Mockito.mock(SiteDAO.class);

    private final SiteEditValidation siteEditValidation = new SiteEditValidation(siteDAO, countryDAO);

    @Test
    public void validateCommon_stateRequired_USA() {
        SiteEditDTO site = createTestSite();
        Country country = new Country();
        country.setName("USA");
        country.setStateRequired(true);
        when(countryDAO.getById(743)).thenReturn(country);

        // when
        List<String> errorMessages = siteEditValidation.validate(site);

        // then
        assertEquals(1, errorMessages.size());
        assertEquals("state is required for country USA", errorMessages.get(0));
    }

    private SiteEditDTO createTestSite() {
        AddressDTO address = new AddressDTO();
        address.setStreet("100 Nice Blvd");
        address.setCity("SomeCity");
        address.setCountryId(743);

        SiteEditDTO site = new SiteEditDTO();
        site.setName("name");
        site.setStatus(SiteStatus.OPEN);
        site.setDateOpened(LocalDate.now());
        site.setGps(new SiteGPS(1, 2));
        site.setStallCount(4);
        site.setStalls(new StallsDTO());
        site.getStalls().setV3(4);
        site.setPlugs(new PlugsDTO());
        site.getPlugs().setNACS(4);
        site.setElevationMeters(1000);
        site.setAddress(address);
        return site;
    }
}
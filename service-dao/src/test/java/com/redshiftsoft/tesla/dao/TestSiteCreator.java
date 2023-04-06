package com.redshiftsoft.tesla.dao;


import com.redshiftsoft.tesla.dao.site.*;
import com.redshiftsoft.util.RandomUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Component
public class TestSiteCreator {

    private static final RandomUtils random = RandomUtils.fast();

    @Resource
    private CountryDAO countryDAO;

    public Site randomSite() {

        Site siteIn = new Site();
        siteIn.setLocationId(random.getString(1, 100, 'a', 'z'));
        siteIn.setName(random.getString(1, 100, 'a', 'z'));
        siteIn.setStatus(random.getElement(SiteStatus.values()));
        if (siteIn.getStatus().isOpen()) {
            siteIn.setDateOpened(LocalDate.of(2013 + random.getInteger(0, 5), random.getInteger(1, 12), random.getInteger(1, 28)));
        }
        if (random.getBoolean(.2d)) {
            siteIn.setHours(random.getString(10, 100, 'a', 'z'));
        }
        siteIn.setDateModified(LocalDateTime.now());
        siteIn.setCounted(random.getBoolean(.5));
        siteIn.setAddress(randomAddress());
        siteIn.setGps(new SiteGPS(random.getDouble(-90d, 90d), random.getDouble(-180d, 180d)));
        siteIn.setElevationMeters(random.getInteger(-25_000, 25_000));
        siteIn.setUrlDiscuss("http://" + random.getString(10, 100, 'a', 'z'));
        siteIn.setStallCount(random.getInteger(0, 100));
        siteIn.setPowerKilowatt(random.getInteger(0, 200));
        siteIn.setSolarCanopy(random.getBoolean(.5));
        siteIn.setBattery(random.getBoolean(.5));
        siteIn.setDeveloperNotes(random.getBoolean(.5) ? random.getParagraph(1, 1000, 80, 10, 'a', 'z') : null);
        siteIn.setMagicDock(random.getBoolean(.5));
        return siteIn;
    }

    public Address randomAddress() {
        Address address = TestAddressCreator.randomAddress();

        // With real country/region
        List<Country> allCountry = countryDAO.getAll();
        Country randomCountry = random.getElement(allCountry);

        address.setCountry(randomCountry.getName());
        address.setCountryId(randomCountry.getId());
        address.setRegion(randomCountry.getRegionName());
        address.setRegionId(randomCountry.getRegionId());

        return address;
    }
}

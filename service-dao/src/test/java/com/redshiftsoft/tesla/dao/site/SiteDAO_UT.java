package com.redshiftsoft.tesla.dao.site;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteCreator;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import kdw.common.math.RandomUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.ZoneOffset;
import java.util.List;

import static org.junit.Assert.*;

@Transactional
@Rollback(value = true)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class SiteDAO_UT {

    @Resource
    private SiteDAO siteDAO;
    @Resource
    private AddressDAO addressDAO;
    @Resource
    private TestSiteCreator testSiteCreator;
    @Resource
    private TestSiteSaver testSiteSaver;

    @Test
    public void insert_getById() {
        Site siteIn = testSiteSaver.persistRandomSite();

        Site siteOut = siteDAO.getById(siteIn.getId());

        assertTrue(siteOut.getId() > 0);
        assertEquals(siteIn, siteOut);
        assertEquals(1, siteOut.getVersion());
        assertEquals(1, siteOut.getAddress().getVersion());
    }

    @Test(expected = EmptyResultDataAccessException.class)
    public void getById_throwsForNonExistingSiteId() {
        siteDAO.getById(-103_343_434);
    }

    @Test
    public void delete() {
        // given
        Site site = testSiteSaver.persistRandomSite();
        assertTrue(siteDAO.exists(site.getId()));
        assertTrue(addressDAO.exists(site.getAddress().getId()));

        // when
        siteDAO.delete(site.getId());

        // then
        assertFalse(siteDAO.exists(site.getId()));
        assertFalse(addressDAO.exists(site.getAddress().getId()));
    }

    @Test
    public void insertWhiteSpaceDropped() {
        Site siteIn = testSiteCreator.randomSite();
        siteIn.setName("    testName   \n \t   ");
        siteIn.setHours(" \t\r\n");
        siteIn.setLocationId(" \tx\n ");
        siteIn.setUrlDiscuss(" \t\n\r ");
        siteIn.setDeveloperNotes("         \t\n\r         ");
        siteIn.getAddress().setStreet(" street ");
        siteIn.getAddress().setCity(" city ");
        siteIn.getAddress().setState(" state ");
        siteIn.getAddress().setZip(" zip ");
        siteIn.getAddress().setCountry(" country ");


        siteDAO.insert(siteIn);

        Site siteOut = siteDAO.getById(siteIn.getId());

        assertEquals("testName", siteOut.getName());
        assertNull(siteOut.getHours());
        assertEquals("x", siteOut.getLocationId());
        assertNull(siteOut.getUrlDiscuss());
        assertNull(siteOut.getDeveloperNotes());
        assertEquals("street", siteOut.getAddress().getStreet());
        assertEquals("state", siteOut.getAddress().getState());
        assertEquals("zip", siteOut.getAddress().getZip());
    }

    @Test
    public void update() {
        // given
        Site oldSite = testSiteSaver.persistRandomSite();
        Address oldAddress = oldSite.getAddress();

        // when
        Site newSite = testSiteCreator.randomSite();
        Address newAddress = newSite.getAddress();
        newSite.setId(oldSite.getId());
        newSite.setDeveloperNotes(RandomUtils.fast().getString(999, 'a', 'z'));
        newAddress.setId(oldAddress.getId());
        siteDAO.update(newSite);

        // then
        Site siteOut = siteDAO.getById(oldSite.getId());
        assertSitesEqual(newSite, siteOut);
        assertTrue(newSite.getDateModified().isAfter(oldSite.getDateModified()));
        // then -- version column
        assertEquals(siteOut.getVersion(), oldSite.getVersion() + 1);
        assertEquals(siteOut.getAddress().getVersion(), oldSite.getAddress().getVersion() + 1);
    }

    @Test
    public void updateWhiteSpaceDropped() {
        Site siteIn = testSiteSaver.persistRandomSite();
        siteIn.setName("    testName   \n \t   ");
        siteIn.setHours(" \t\r\n");
        siteIn.setLocationId(" \tx\n ");
        siteIn.setUrlDiscuss(" \t\n\r ");
        siteIn.setDeveloperNotes("         \t\n\r         ");
        siteIn.getAddress().setStreet(" street ");
        siteIn.getAddress().setCity(" city ");
        siteIn.getAddress().setState(" state ");
        siteIn.getAddress().setZip(" zip ");
        siteIn.getAddress().setCountry(" country ");
        siteDAO.update(siteIn);

        Site siteOut = siteDAO.getById(siteIn.getId());

        assertEquals("testName", siteOut.getName());
        assertNull(siteOut.getHours());
        assertEquals("x", siteOut.getLocationId());
        assertNull(siteOut.getUrlDiscuss());
        assertNull(siteOut.getDeveloperNotes());
        assertEquals("street", siteOut.getAddress().getStreet());
        assertEquals("state", siteOut.getAddress().getState());
        assertEquals("zip", siteOut.getAddress().getZip());
    }

    @Test
    public void getSiteStatus() {
        Site siteIn = testSiteSaver.persistRandomSite();

        SiteStatus siteStatusOut = siteDAO.getSiteStatus(siteIn.getId());

        assertEquals(siteIn.getStatus(), siteStatusOut);
    }

    @Test
    public void getEnabledSites() {
        List<Site> sites = siteDAO.getEnabledSites();
        for (Site site : sites) {
            assertTrue(site.isEnabled());
        }

        assertTrue(sites.size() > 100);
    }

    @Test
    public void getAllSites() {
        Site siteIn = testSiteCreator.randomSite();
        siteIn.setEnabled(false);
        siteDAO.insert(siteIn);

        List<Site> allSites = siteDAO.getAllSites();
        List<Site> enabledSites = siteDAO.getEnabledSites();

        assertFalse(enabledSites.contains(siteIn));
        assertTrue(allSites.contains(siteIn));

        assertTrue(allSites.size() > 100);
        assertTrue(enabledSites.size() > 100);
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    private void assertSitesEqual(Site siteIn, Site siteOut) {
        assertEquals(siteIn.getLocationId(), siteOut.getLocationId());
        assertEquals(siteIn.getName(), siteOut.getName());
        assertEquals(siteIn.getStatus(), siteOut.getStatus());
        assertEquals(siteIn.getDateOpened(), siteOut.getDateOpened());

        long inMillis = siteIn.getDateModified().toInstant(ZoneOffset.UTC).toEpochMilli();
        long outMillis = siteOut.getDateModified().toInstant(ZoneOffset.UTC).toEpochMilli();
        long diffMillis = Math.abs(inMillis - outMillis);
        assertTrue("diffMillis= " + diffMillis, diffMillis < 30_000);

        assertEquals(siteIn.getHours(), siteOut.getHours());
        assertEquals(siteIn.isEnabled(), siteOut.isEnabled());
        assertEquals(siteIn.isCounted(), siteOut.isCounted());
        assertEquals(siteIn.getGps(), siteOut.getGps());
        assertEquals(siteIn.getElevationMeters(), siteOut.getElevationMeters());
        assertEquals(siteIn.getUrlDiscuss(), siteOut.getUrlDiscuss());
        assertEquals(siteIn.getStallCount(), siteOut.getStallCount());
        assertEquals(siteIn.getPowerKilowatt(), siteOut.getPowerKilowatt());
        assertEquals(siteIn.isSolarCanopy(), siteOut.isSolarCanopy());
        assertEquals(siteIn.isBattery(), siteOut.isBattery());
        assertEquals(siteIn.getDeveloperNotes(), siteOut.getDeveloperNotes());

        assertEquals(siteIn, siteOut);
    }

}
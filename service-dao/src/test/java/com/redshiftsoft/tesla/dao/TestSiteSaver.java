package com.redshiftsoft.tesla.dao;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

import static org.junit.Assert.assertTrue;

@Component
public class TestSiteSaver {

    @Resource
    private SiteDAO superchargerDAO;
    @Resource
    private TestSiteCreator testSiteCreator;


    public Site persistRandomSite() {
        Site siteIn = testSiteCreator.randomSite();
        superchargerDAO.insert(siteIn);
        assertTrue(siteIn.getId() > 0);
        assertTrue(siteIn.getAddress().getId() > 0);
        assertTrue(siteIn.getAddress().getVersion() > 0);
        return siteIn;
    }


}

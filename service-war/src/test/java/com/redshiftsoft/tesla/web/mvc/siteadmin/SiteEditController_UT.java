package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import static org.junit.Assert.assertEquals;


@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/com/redshiftsoft/tesla/app-context.xml"})
public class SiteEditController_UT {


    @Resource
    private SiteEditController siteEditController;

    @Test
    public void emptySite() {
        SiteEditDTO newSite = new SiteEditDTO();
        HttpServletRequest httpServletRequest = Mockito.mock(HttpServletRequest.class);
        JsonResponse jsonResponse = siteEditController.saveOrEdit(httpServletRequest, newSite);
        assertEquals(JsonResponse.Result.FAIL, jsonResponse.getResult());
    }

}
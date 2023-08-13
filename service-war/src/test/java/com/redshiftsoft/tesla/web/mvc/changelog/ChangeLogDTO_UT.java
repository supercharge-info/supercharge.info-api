package com.redshiftsoft.tesla.web.mvc.changelog;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.junit.jupiter.api.Test;

import java.time.Instant;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ChangeLogDTO_UT {

    @Test
    public void testJsonMapping() throws JsonProcessingException {
        // given
        ObjectMapper mapper = new ObjectMapper();
        Instant date = Instant.ofEpochMilli(1511238212755L);
        ChangeLogDTO dto = new ChangeLogDTO();
        dto.setId(4242);
        dto.setSiteId(123456);
        dto.setDate(date);
        dto.setChangeType(ChangeType.UPDATE);
        dto.setSiteName("testSiteName");
        dto.setRegionId(9999);
        dto.setRegion("testRegion");
        dto.setCountryId(8888);
        dto.setCountry("testCountry");
        dto.setState("testState");
        dto.setSiteStatus(SiteStatus.CONSTRUCTION);
        dto.setPrevStatus(SiteStatus.PERMIT);
        dto.setStallCount(19);
        dto.setPowerKilowatt(125);

        // when
        String s = mapper.writeValueAsString(dto);

        // then
        assertEquals("{\"" +
                "id\":4242,\"" +
                "siteId\":123456,\"" +
                "date\":\"2017-11-20\",\"" +
                "changeType\":\"UPDATE\",\"" +
                "siteStatus\":\"CONSTRUCTION\",\"" +
                "prevStatus\":\"PERMIT\",\"" +
                "stallCount\":19,\"" +
                "powerKilowatt\":125,\"" +
                "notify\":false,\"" +
                "siteName\":\"testSiteName\",\"" +
                "regionId\":9999,\"" +
                "region\":\"testRegion\",\"" +
                "countryId\":8888,\"" +
                "country\":\"testCountry\",\"" +
                "state\":\"testState\",\"" +
                "dateFormatted\":\"Mon, Nov 20 2017\"" +
                "}", s);
    }


}

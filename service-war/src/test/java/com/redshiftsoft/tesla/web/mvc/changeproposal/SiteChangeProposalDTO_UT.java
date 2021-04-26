package com.redshiftsoft.tesla.web.mvc.changeproposal;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.redshiftsoft.tesla.dao.site.SiteGPS;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import kdw.common.string.StringTools;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.time.LocalDate;

import static org.junit.Assert.*;

public class SiteChangeProposalDTO_UT {

    private final ObjectMapper objectMapper = new ObjectMapper();
    private String expectedJson;

    @Before
    public void setup() throws IOException {
        objectMapper.enable(SerializationFeature.INDENT_OUTPUT);

        String EXPECTED_RESOURCE = "/com/redshiftsoft/tesla/web/mvc/changeproposal/change.json";
        expectedJson = StringTools.toString(getClass().getResourceAsStream(EXPECTED_RESOURCE), "UTF-8");
    }

    @Test
    public void serialize() throws IOException {
        // given
        SiteChangeProposalDTO changeDTOIn = createSiteProposal();

        // when -- to string
        String actualJson = objectMapper.writeValueAsString(changeDTOIn);
        assertEquals(expectedJson, actualJson);

        // when -- from string
        SiteChangeProposalDTO changeDTOOut = objectMapper.readValue(actualJson, SiteChangeProposalDTO.class);
        assertNotSame(changeDTOIn, changeDTOOut);
        assertEquals(changeDTOIn.toString(), changeDTOOut.toString());
    }

    @Test
    public void deserialize() throws IOException {
        String s = "{\"id\":1234}";
        SiteChangeProposalDTO site = objectMapper.readValue(s, SiteChangeProposalDTO.class);
        assertEquals(1234, site.getId());
        assertNull(site.getAddress());
        assertNull(site.getGps());
    }

    @Test
    public void deserialize_2() throws IOException {
        String s = "{\"id\":765, \"elevationMeters\": 483}";
        SiteChangeProposalDTO site = objectMapper.readValue(s, SiteChangeProposalDTO.class);
        assertEquals(765, site.getId());
        assertEquals(483, site.getElevationMeters().intValue());
        assertNull(site.getAddress());
        assertNull(site.getGps());
    }

    @Test
    public void deserialize_3() throws IOException {
        String s = "{\"id\":765, \"elevationMeters\": 483, \"changeDescription\": \"I noticed the elevation for Buckeye AZ was off by 100 meters.\"}";
        SiteChangeProposalDTO site = objectMapper.readValue(s, SiteChangeProposalDTO.class);
        assertEquals(765, site.getId());
        assertEquals(483, site.getElevationMeters().intValue());
        assertEquals("I noticed the elevation for Buckeye AZ was off by 100 meters.", site.getChangeDescription());
        assertNull(site.getAddress());
        assertNull(site.getGps());
    }

    @Test
    public void deserialize_4() throws IOException {
        String s = "{\"id\":765, \"elevationMeters\": 483, \"gps\": { \"latitude\" : 33.443011 } }";
        SiteChangeProposalDTO site = objectMapper.readValue(s, SiteChangeProposalDTO.class);
        assertEquals(765, site.getId());
        assertEquals(483, site.getElevationMeters().intValue());
        assertEquals(33.443011, site.getGps().getLatitude(), 1e-6);
        assertEquals(0, site.getGps().getLongitude(), 1e-6);
        assertNull(site.getAddress());
        assertNull(site.getChangeDescription());
    }

    @Test
    public void deserialize_5() throws IOException {
        String s = "{\"id\":765, \"elevationMeters\": 483, \"address\": { \"state\" : \"MO\" } }";
        SiteChangeProposalDTO site = objectMapper.readValue(s, SiteChangeProposalDTO.class);
        assertEquals(765, site.getId());
        assertEquals(483, site.getElevationMeters().intValue());
        assertEquals("MO", site.getAddress().getState());
        assertNull(site.getGps());
        assertNull(site.getChangeDescription());
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    private SiteChangeProposalDTO createSiteProposal() {
        SiteChangeProposalDTO changeDTO = new SiteChangeProposalDTO();
        changeDTO.setId(100);
        changeDTO.setName("Buckeye, AZ");
        changeDTO.setGps(new SiteGPS(33.443011, -112.556876));
        changeDTO.setChangeDescription("This is a change of everything.");
        changeDTO.setElevationMeters(1200);
        changeDTO.setDateOpened(LocalDate.of(2014, 12, 25));
        changeDTO.setStallCount(12);
        changeDTO.setLocationId("buckeyesupercharger");
        changeDTO.setStatus(SiteStatus.PERMIT);
        changeDTO.setHours("M-F 9:00 - 17:00");
        changeDTO.setUrlDiscuss("http://www.teslamotorsclub.com/showthread.php/25317-Supercharger-Buckeye-AZ");

        // Address
        SiteChangeProposalAddressDTO addressDTO = new SiteChangeProposalAddressDTO();
        addressDTO.setState("AZ");
        addressDTO.setCity("Buckeye");
        addressDTO.setCountry("USA");
        addressDTO.setStreet("416 S Watson RD");
        addressDTO.setZip("85326");
        changeDTO.setAddress(addressDTO);
        return changeDTO;
    }

}
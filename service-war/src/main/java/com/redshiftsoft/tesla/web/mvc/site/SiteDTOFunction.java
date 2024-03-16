package com.redshiftsoft.tesla.web.mvc.site;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.util.StringTools;

import java.util.function.Function;

public class SiteDTOFunction implements Function<Site, SiteDTO> {

    @Override
    public SiteDTO apply(Site site) {
        SiteDTO siteDTO = new SiteDTO();

        siteDTO.setId(site.getId());
        siteDTO.setLocationId(site.getLocationId());
        siteDTO.setName(site.getName());
        siteDTO.setStatus(site.getStatus());
        siteDTO.setAddress(AddressDTOFunctions.transform(site.getAddress()));
        siteDTO.setGps(site.getGps());
        siteDTO.setUrlDiscuss(StringTools.isNotEmpty(site.getUrlDiscuss()));
        siteDTO.setDateOpened(site.getDateOpened());
        siteDTO.setStallCount(site.getStallCount());
        siteDTO.setHours(site.getHours());
        siteDTO.setCounted(site.isCounted());
        siteDTO.setEnabled(site.isEnabled());
        siteDTO.setElevationMeters(site.getElevationMeters());
        siteDTO.setPowerKilowatt(site.getPowerKilowatt());
        siteDTO.setSolarCanopy(site.isSolarCanopy());
        siteDTO.setBattery(site.isBattery());
        siteDTO.setOtherEVs(site.isOtherEVs());
        siteDTO.setStalls(StallsDTOFunctions.transform(site.getStalls()));
        siteDTO.setPlugs(PlugsDTOFunctions.transform(site.getPlugs()));
        siteDTO.setParkingId(site.getParkingId());
        siteDTO.setFacilityName(site.getFacilityName());
        siteDTO.setFacilityHours(site.getFacilityHours());
        siteDTO.setAccessNotes(site.getAccessNotes());
        siteDTO.setAddressNotes(site.getAddressNotes());
        siteDTO.setPlugshareId(site.getPlugshareId());
        siteDTO.setOsmId(site.getOsmId());

        return siteDTO;
    }

}

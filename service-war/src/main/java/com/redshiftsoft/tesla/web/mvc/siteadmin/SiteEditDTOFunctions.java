package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.web.mvc.site.AddressDTOFunctions;

import java.util.Collection;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/*
 * Just a namespace for the two functions below.
 */
public final class SiteEditDTOFunctions {

    private static final SiteFunction SITE_FUNCTION = new SiteFunction();
    private static final SiteEditDTOFunction SITE_EDIT_DTO_FUNCTION = new SiteEditDTOFunction();

    private SiteEditDTOFunctions() {
    }

    public static Site transform(SiteEditDTO siteEditDTO) {
        return SITE_FUNCTION.apply(siteEditDTO);
    }

    public static SiteEditDTO transform(Site site) {
        return SITE_EDIT_DTO_FUNCTION.apply(site);
    }

    public static List<SiteEditDTO> transform(Collection<Site> site) {
        return site.parallelStream().map(SITE_EDIT_DTO_FUNCTION).collect(Collectors.toList());
    }

    private static class SiteEditDTOFunction implements Function<Site, SiteEditDTO> {

        @Override
        public SiteEditDTO apply(Site site) {
            SiteEditDTO siteDTO = new SiteEditDTO();

            siteDTO.setId(site.getId());
            siteDTO.setLocationId(site.getLocationId());
            siteDTO.setName(site.getName());
            siteDTO.setStatus(site.getStatus());
            siteDTO.setAddress(AddressDTOFunctions.transform(site.getAddress()));
            siteDTO.setGps(site.getGps());
            siteDTO.setUrlDiscuss(site.getUrlDiscuss());
            siteDTO.setDateModified(site.getDateModified());
            siteDTO.setVersion(site.getVersion());
            siteDTO.setDateOpened(site.getDateOpened());
            siteDTO.setStallCount(site.getStallCount());
            siteDTO.setHours(site.getHours());
            siteDTO.setCounted(site.isCounted());
            siteDTO.setEnabled(site.isEnabled());
            siteDTO.setElevationMeters(site.getElevationMeters());
            siteDTO.setPowerKiloWatt(site.getPowerKilowatt());
            siteDTO.setSolarCanopy(site.isSolarCanopy());
            siteDTO.setBattery(site.isBattery());
            siteDTO.setMagicDock(site.isMagicDock());
            siteDTO.setDeveloperNotes(site.getDeveloperNotes());

            return siteDTO;
        }


    }

    private static class SiteFunction implements Function<SiteEditDTO, Site> {

        @Override
        public Site apply(SiteEditDTO siteDTO) {
            Site site = new Site();

            site.setId(siteDTO.getId());
            site.setLocationId(siteDTO.getLocationId());
            site.setName(siteDTO.getName());
            site.setStatus(siteDTO.getStatus());
            site.setAddress(AddressDTOFunctions.transform(siteDTO.getAddress()));
            site.setGps(siteDTO.getGps());
            site.setUrlDiscuss(siteDTO.getUrlDiscuss());
            site.setDateModified(siteDTO.getDateModified());
            site.setVersion(siteDTO.getVersion());
            site.setDateOpened(siteDTO.getDateOpened());
            site.setStallCount(siteDTO.getStallCount());
            site.setHours(siteDTO.getHours());
            site.setCounted(siteDTO.isCounted());
            site.setEnabled(siteDTO.isEnabled());
            site.setElevationMeters(siteDTO.getElevationMeters());
            site.setPowerKilowatt(siteDTO.getPowerKiloWatt());
            site.setSolarCanopy(siteDTO.isSolarCanopy());
            site.setBattery(siteDTO.isBattery());
            site.setMagicDock(siteDTO.isMagicDock());
            site.setDeveloperNotes(siteDTO.getDeveloperNotes());

            return site;
        }
    }

}

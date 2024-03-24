package com.redshiftsoft.tesla.web.mvc.site;


import com.redshiftsoft.util.StringTools;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class SiteDTOComparatorFactory {

    private static final Comparator<SiteDTO> SITE_NAME = (s1, s2) -> StringTools.compare(s1.getName(), s2.getName());
    private static final Comparator<SiteDTO> ADDRESS_STREET = (s1, s2) -> StringTools.compare(s1.getAddress().getStreet(), s2.getAddress().getStreet());
    private static final Comparator<SiteDTO> ADDRESS_CITY = (s1, s2) -> StringTools.compare(s1.getAddress().getCity(), s2.getAddress().getCity());
    private static final Comparator<SiteDTO> ADDRESS_STATE = (s1, s2) -> StringTools.compare(s1.getAddress().getState(), s2.getAddress().getState());
    private static final Comparator<SiteDTO> ADDRESS_CODE = (s1, s2) -> StringTools.compare(s1.getAddress().getZip(), s2.getAddress().getZip());
    private static final Comparator<SiteDTO> ADDRESS_COUNTRY = (s1, s2) -> StringTools.compare(s1.getAddress().getCountry(), s2.getAddress().getCountry());
    private static final Comparator<SiteDTO> LATITUDE = Comparator.comparingDouble(s -> s.getGps().getLatitude());
    private static final Comparator<SiteDTO> ELEVATION = Comparator.comparingInt(SiteDTO::getElevationMeters);
    private static final Comparator<SiteDTO> STALL_COUNT = Comparator.comparingInt(SiteDTO::getStallCount);
    private static final Comparator<SiteDTO> POWER_KILOWATT = Comparator.comparingInt(SiteDTO::getPowerKilowatt);
    private static final Comparator<SiteDTO> STATUS = Comparator.comparing(SiteDTO::getStatus);
    private static final Comparator<SiteDTO> OPEN_DATE = Comparator.comparing(s -> s.getDateOpened() == null ? LocalDate.MIN : s.getDateOpened());

    // the order of these elements must match the order of the columns on the Data table
    // (see DataView.js in the main supercharge.info project)
    private static final List<Comparator<SiteDTO>> COLUMNS = Arrays.asList(
        SITE_NAME, ADDRESS_STREET, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_CODE, ADDRESS_COUNTRY, LATITUDE, ELEVATION, STALL_COUNT, POWER_KILOWATT, STATUS, OPEN_DATE
    );

    public static Comparator<SiteDTO> build(Integer column, String direction) {

        Comparator<SiteDTO> c = (column >= 0 && column < COLUMNS.size()) ? COLUMNS.get(column) : SITE_NAME;

        if (direction != null && direction.toLowerCase().startsWith("d")) {
            return c.reversed();
        }
        return c;
    }

}

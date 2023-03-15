package com.redshiftsoft.tesla.web.mvc.site;


import com.redshiftsoft.util.StringTools;

import java.time.LocalDate;
import java.util.Comparator;

public class SiteDTOComparatorFactory {

    private static final Comparator<SiteDTO> SITE_NAME = (s1, s2) -> StringTools.compare(s1.getName(), s2.getName());
    private static final Comparator<SiteDTO> ADDRESS_STREET = (s1, s2) -> StringTools.compare(s1.getAddress().getStreet(), s2.getAddress().getStreet());
    private static final Comparator<SiteDTO> ADDRESS_CITY = (s1, s2) -> StringTools.compare(s1.getAddress().getCity(), s2.getAddress().getCity());
    private static final Comparator<SiteDTO> OPEN_DATE = Comparator.comparing(s -> s.getDateOpened() == null ? LocalDate.MIN : s.getDateOpened());
    private static final Comparator<SiteDTO> STATUS = Comparator.comparing(SiteDTO::getStatus);
    private static final Comparator<SiteDTO> ADDRESS_STATE = (s1, s2) -> StringTools.compare(s1.getAddress().getState(), s2.getAddress().getState());
    private static final Comparator<SiteDTO> ADDRESS_CODE = (s1, s2) -> StringTools.compare(s1.getAddress().getZip(), s2.getAddress().getZip());
    private static final Comparator<SiteDTO> ADDRESS_COUNTRY = (s1, s2) -> StringTools.compare(s1.getAddress().getCountry(), s2.getAddress().getCountry());
    private static final Comparator<SiteDTO> STALL_COUNT = Comparator.comparingInt(SiteDTO::getStallCount);
    private static final Comparator<SiteDTO> POWER_KILOWATT = Comparator.comparingInt(SiteDTO::getPowerKilowatt);
    private static final Comparator<SiteDTO> LATITUDE = Comparator.comparingDouble(s -> s.getGps().getLatitude());
    private static final Comparator<SiteDTO> ELEVATION = Comparator.comparingInt(SiteDTO::getElevationMeters);

    public static Comparator<SiteDTO> build(Integer column, String direction) {

        Comparator<SiteDTO> c;

        if (column == 0) {
            c = SITE_NAME;
        } else if (column == 1) {
            c = ADDRESS_STREET;
        } else if (column == 2) {
            c = ADDRESS_CITY;
        } else if (column == 3) {
            c = ADDRESS_STATE;
        } else if (column == 4) {
            c = ADDRESS_CODE;
        } else if (column == 5) {
            c = ADDRESS_COUNTRY;
        } else if (column == 6) {
            c = STALL_COUNT;
        } else if (column == 7) {
            c = POWER_KILOWATT;
        } else if (column == 8) {
            c = LATITUDE;
        } else if (column == 9) {
            c = ELEVATION;
        } else if (column == 10) {
            c = STATUS;
        } else if (column == 11) {
            c = OPEN_DATE;
        } else {
            c = SITE_NAME;
        }

        if (direction != null && direction.toLowerCase().startsWith("d")) {
            return c.reversed();
        }
        return c;
    }

}

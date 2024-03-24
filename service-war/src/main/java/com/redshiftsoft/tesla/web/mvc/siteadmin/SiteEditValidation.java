package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.site.*;
import com.redshiftsoft.tesla.web.mvc.site.AddressDTO;
import com.redshiftsoft.tesla.web.mvc.site.PlugsDTO;
import com.redshiftsoft.tesla.web.mvc.site.StallsDTO;

import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

import static com.redshiftsoft.util.StringTools.isEmpty;

@Component
public class SiteEditValidation {

    @Resource
    private SiteDAO siteDAO;

    @Resource
    private CountryDAO countryDAO;

    public SiteEditValidation() {
    }

    public SiteEditValidation(SiteDAO siteDAO, CountryDAO countryDAO) {
        this.siteDAO = siteDAO;
        this.countryDAO = countryDAO;
    }

    public List<String> validate(SiteEditDTO site) {
        List<String> errorMessages = Lists.newArrayList();

        if (site.getId() > 0) {
            validateEdit(site, errorMessages);
        }

        validateCommon(site, errorMessages);

        return errorMessages;
    }

    private void validateEdit(SiteEditDTO modifiedSite, List<String> errorMessages) {
        Site existingSite = siteDAO.getById(modifiedSite.getId());
        if (existingSite == null) {
            errorMessages.add("invalid site id = " + modifiedSite.getId());
        } else {
            modifiedSite.getAddress().setId(existingSite.getAddress().getId());
        }
    }

    private void validateCommon(SiteEditDTO site, List<String> errorMessages) {

        //
        // Site name
        //
        if (isEmpty(site.getName())) {
            errorMessages.add("site name cannot be empty");
        }

        //
        // Status
        //
        if (site.getStatus() == null) {
            errorMessages.add("status name cannot be empty");
        }

        //
        // Date Opened
        //
        if (SiteStatus.OPEN.equals(site.getStatus()) || SiteStatus.EXPANDING.equals(site.getStatus())) {
            if (site.getDateOpened() == null) {
                errorMessages.add("missing open date for OPEN or EXPANDING site");
            }
        } else {
            if (site.getDateOpened() != null) {
                errorMessages.add("open date should be null for non-open site");
            }
        }

        //
        // GPS
        //
        if (site.getGps() == null) {
            errorMessages.add("gps is required");
        } else {
            double absLat = Math.abs(site.getGps().getLatitude());
            double absLon = Math.abs(site.getGps().getLongitude());
            if (absLat < 1e-8) {
                errorMessages.add("latitude is required");
            }
            if (absLon < 1e-8) {
                errorMessages.add("longitude is required");
            }
            if (absLat > 90d) {
                errorMessages.add("invalid latitude");
            }
            if (absLon > 180d) {
                errorMessages.add("invalid longitude");
            }
        }

        if (site.getElevationMeters() == null) {
            errorMessages.add("elevation is required");
        }

        //
        // url discuss
        //
        if (!isEmpty(site.getUrlDiscuss()) && !site.getUrlDiscuss().startsWith("http")) {
            errorMessages.add("URL discuss must start with http");
        }

        //
        // stall/plug counts
        //
        if (site.getStallCount() <= 0) {
            errorMessages.add("stall count must be at least 1");
        }

        StallsDTO stalls = site.getStalls();
        if (stalls == null) stalls = new StallsDTO();
        PlugsDTO plugs = site.getPlugs();
        if (plugs == null) plugs = new PlugsDTO();

        if (site.getStallCount() != stalls.getTotal()) {
            errorMessages.add("stall count must equal total of individual stall type counts");
        }
        if (stalls.getAccessible() != null && stalls.getAccessible() > site.getStallCount()) {
            errorMessages.add("# of accessible stalls cannot be more than total stall count");
        }
        if (stalls.getTrailerFriendly() != null && stalls.getTrailerFriendly() > site.getStallCount()) {
            errorMessages.add("# of trailer-friendly stalls cannot be more than total stall count");
        }
        if (site.getStallCount() != plugs.getTotal() && (plugs.getMulti() == null || plugs.getMulti() == 0)) {
            errorMessages.add("stall count must equal total of individual plug type counts (unless any stalls are multi-plug)");
        }
        if (plugs.getMulti() != null && plugs.getMulti() > 0 && site.getStallCount() > plugs.getTotal() - plugs.getMulti()) {
            errorMessages.add("stall count cannot exceed total of individual plug type counts minus multi-plug count");
        }

		//
		// power
		//
        if (site.getPowerKiloWatt() < 0 || site.getPowerKiloWatt() > 500) {
            errorMessages.add("power must be in range [0,500]");
        }

        //
        // address
        //
        AddressDTO address = site.getAddress();
        if (address == null) {
            errorMessages.add("address is required");
        } else {
            if (isEmpty(address.getStreet())) {
                errorMessages.add("street is required");
            }
            if (isEmpty(address.getCity())) {
                errorMessages.add("city is required");
            }
            if (address.getCountryId() <= 0) {
                errorMessages.add("country is required");
            } else {
                Country country = countryDAO.getById(address.getCountryId());
                if (country.isStateRequired() && isEmpty(address.getState())) {
                    errorMessages.add("state is required for country " + country.getName());
                }
            }
        }

        //
        // China-specific logic: Hong Kong is CCS2 only, Macau is CCS2 or GB/T, the rest of China is GB/T only
        //
        if (address.getCountry() == "China") {
            if (address.getState().toLowerCase() == "hong kong") {
                if (plugs.getGBT() > 0) {
                    errorMessages.add("Hong Kong does not use GB/T plugs");
                }
            } else if (address.getState().toLowerCase() != "macau") {
                if (plugs.getCCS2() > 0) {
                    errorMessages.add("China locations (except Hong Kong and Macau) only use GB/T plugs");
                }
            }
        }
    }

}

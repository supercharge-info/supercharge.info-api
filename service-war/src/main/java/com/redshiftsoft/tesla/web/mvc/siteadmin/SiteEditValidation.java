package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.site.*;
import com.redshiftsoft.tesla.web.mvc.site.AddressDTO;
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
        if (SiteStatus.OPEN.equals(site.getStatus())) {
            if (site.getDateOpened() == null) {
                errorMessages.add("missing open date for OPEN site");
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
        // stall count
        //
        if (site.getStallCount() <= 0) {
            errorMessages.add("stall count must be at least 1");
        }

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

    }

}

package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChange;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChangeBuilder;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChangeDAO;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.util.StringTools;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.Objects;

@Component
public class SiteDiffLogger {

    @Resource
    private SiteChangeDAO siteChangesDAO;

    /**
     * Record the creation of a NEW site in the site changes table.
     */
    public void recordNew(User user, Site site) {
        siteChangesDAO.insert(new SiteChange(site.getId(), user.getId(), site.getVersion(), "name", "", site.getName(), Instant.now()));
    }

    /**
     * Record the edit of an EXISTING site in the site changes table.
     */
    public void record(User user, Site oldSite, Site newSite) {

        int nextVersion = oldSite.getVersion() + 1;
        SiteChangeBuilder builder = new SiteChangeBuilder(oldSite.getId(), user.getId(), nextVersion, Instant.now());

        diff(builder, "locationId", oldSite.getLocationId(), newSite.getLocationId());
        diff(builder, "name", oldSite.getName(), newSite.getName());
        diff(builder, "status", oldSite.getStatus(), newSite.getStatus());
        diff(builder, "dateOpened", oldSite.getDateOpened(), newSite.getDateOpened());
        diff(builder, "hours", oldSite.getHours(), newSite.getHours());
        diff(builder, "enabled", oldSite.isEnabled(), newSite.isEnabled());
        diff(builder, "counted", oldSite.isCounted(), newSite.isCounted());
        diff(builder, "latitude", oldSite.getGps().getLatitude(), newSite.getGps().getLatitude());
        diff(builder, "longitude", oldSite.getGps().getLongitude(), newSite.getGps().getLongitude());
        diff(builder, "elevationMeters", oldSite.getElevationMeters(), newSite.getElevationMeters());
        diff(builder, "urlDiscuss", oldSite.getUrlDiscuss(), newSite.getUrlDiscuss());
        diff(builder, "stallCount", oldSite.getStallCount(), newSite.getStallCount());
        diff(builder, "powerKiloWatt", oldSite.getPowerKilowatt(), newSite.getPowerKilowatt());
        diff(builder, "isSolarCanopy", oldSite.isSolarCanopy(), newSite.isSolarCanopy());
        diff(builder, "isBattery", oldSite.isBattery(), newSite.isBattery());
        diff(builder, "otherEVs", oldSite.isOtherEVs(), newSite.isOtherEVs());
        diff(builder, "developerNotes", oldSite.getDeveloperNotes(), newSite.getDeveloperNotes());

        diff(builder, "address.street", oldSite.getAddress().getStreet(), newSite.getAddress().getStreet());
        diff(builder, "address.city", oldSite.getAddress().getCity(), newSite.getAddress().getCity());
        diff(builder, "address.state", oldSite.getAddress().getState(), newSite.getAddress().getState());
        diff(builder, "address.zip", oldSite.getAddress().getZip(), newSite.getAddress().getZip());
        diff(builder, "address.countryId", oldSite.getAddress().getCountryId(), newSite.getAddress().getCountryId());

        siteChangesDAO.insert(builder.getChangeList());
    }

    private static void diff(SiteChangeBuilder builder, String fieldName, Object a, Object b) {
        if (!equivalent(a, b)) {
            String oldValue = StringTools.toString(a);
            String newValue = StringTools.toString(b);
            builder.add(fieldName, oldValue, newValue);
        }
    }

    private static boolean equivalent(Object a, Object b) {
        return isNullOrEmptyString(a) && isNullOrEmptyString(b) || Objects.equals(a, b);
    }

    private static boolean isNullOrEmptyString(Object object) {
        if (object == null) {
            return true;
        } else if (!(object instanceof String)) {
            return false;
        }
        return ((String) object).trim().length() == 0;
    }

}

package com.redshiftsoft.tesla.web.mvc.siteadmin;

import com.redshiftsoft.tesla.dao.site.Plugs;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.Stalls;
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
    public boolean record(User user, Site oldSite, Site newSite) {

        int nextVersion = oldSite.getVersion() + 1;
        SiteChangeBuilder builder = new SiteChangeBuilder(oldSite.getId(), user.getId(), nextVersion, Instant.now());

        Stalls oldStalls = oldSite.getStalls(), newStalls = newSite.getStalls();
        if (oldStalls == null) oldStalls = new Stalls();
        if (newStalls == null) newStalls = new Stalls();
        Plugs oldPlugs = oldSite.getPlugs(), newPlugs = newSite.getPlugs();
        if (oldPlugs == null) oldPlugs = new Plugs();
        if (newPlugs == null) newPlugs = new Plugs();
        
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

        diff(builder, "stallsUrban", oldStalls.getUrban(), newStalls.getUrban());
        diff(builder, "stallsV2", oldStalls.getV2(), newStalls.getV2());
        diff(builder, "stallsV3", oldStalls.getV3(), newStalls.getV3());
        diff(builder, "stallsV4", oldStalls.getV4(), newStalls.getV4());
        diff(builder, "stallsOther", oldStalls.getOther(), newStalls.getOther());
        diff(builder, "stallsAccessible", oldStalls.getAccessible(), newStalls.getAccessible());
        diff(builder, "stallsTrailerFriendly", oldStalls.getTrailerFriendly(), newStalls.getTrailerFriendly());

        diff(builder, "plugsTPC", oldPlugs.getTPC(), newPlugs.getTPC());
        diff(builder, "plugsNACS", oldPlugs.getNACS(), newPlugs.getNACS());
        diff(builder, "plugsCCS1", oldPlugs.getCCS1(), newPlugs.getCCS1());
        diff(builder, "plugsCCS2", oldPlugs.getCCS2(), newPlugs.getCCS2());
        diff(builder, "plugsType2", oldPlugs.getType2(), newPlugs.getType2());
        diff(builder, "plugsGBT", oldPlugs.getGBT(), newPlugs.getGBT());
        diff(builder, "plugsOther", oldPlugs.getOther(), newPlugs.getOther());
        diff(builder, "plugsMulti", oldPlugs.getMulti(), newPlugs.getMulti());

        diff(builder, "parkingId", oldSite.getParkingId(), newSite.getParkingId());
        diff(builder, "facilityName", oldSite.getFacilityName(), newSite.getFacilityName());
        diff(builder, "facilityHours", oldSite.getFacilityHours(), newSite.getFacilityHours());
        diff(builder, "accessNotes", oldSite.getAccessNotes(), newSite.getAccessNotes());
        diff(builder, "addressNotes", oldSite.getAddressNotes(), newSite.getAddressNotes());
        diff(builder, "plugshareId", oldSite.getPlugshareId(), newSite.getPlugshareId());
        diff(builder, "osmId", oldSite.getOsmId(), newSite.getOsmId());

        diff(builder, "address.street", oldSite.getAddress().getStreet(), newSite.getAddress().getStreet());
        diff(builder, "address.city", oldSite.getAddress().getCity(), newSite.getAddress().getCity());
        diff(builder, "address.state", oldSite.getAddress().getState(), newSite.getAddress().getState());
        diff(builder, "address.zip", oldSite.getAddress().getZip(), newSite.getAddress().getZip());
        diff(builder, "address.countryId", oldSite.getAddress().getCountryId(), newSite.getAddress().getCountryId());

        if (builder.getChangeList().size() == 0) {
            return false;
        }
        siteChangesDAO.insert(builder.getChangeList());
        return true;
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

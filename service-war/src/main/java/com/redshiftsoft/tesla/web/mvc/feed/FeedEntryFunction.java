package com.redshiftsoft.tesla.web.mvc.feed;

import com.redshiftsoft.tesla.dao.changelog.ChangeLog;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.sun.syndication.feed.synd.SyndContentImpl;
import com.sun.syndication.feed.synd.SyndEntryImpl;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.function.Function;

@Component
class FeedEntryFunction implements Function<ChangeLog, SyndEntryImpl> {

    @Resource
    private SiteDAO siteDAO;

    @Override
    public SyndEntryImpl apply(ChangeLog changeLog) {

        Site site = siteDAO.getById(changeLog.getSiteId());

        SyndEntryImpl entry = new SyndEntryImpl();

        entry.setAuthor("supercharge.info");
        entry.setUri(buildUri(changeLog));
        entry.setTitle(buildTitle(changeLog));
        entry.setLink(buildLink(site));
        entry.setPublishedDate(new Date(changeLog.getDate().toEpochMilli()));
        entry.setUpdatedDate(new Date(changeLog.getModifiedInstant().toEpochMilli()));

        SyndContentImpl description = new SyndContentImpl();
        description.setType("text/html");
        description.setValue(buildDescription(site, changeLog));
        entry.setDescription(description);

        return entry;
    }

    private String buildLink(Site site) {
        return "https://supercharge.info/map?center=" +
                site.getGps().getLatitude() + "," + site.getGps().getLongitude() + "&zoom=11";
    }

    private String buildDescription(Site site, ChangeLog changeLog) {
        return "<a href='" + buildLink(site) + "'>" + site.getName() + "</a>" +
                "<br/><br/>" +
                buildTitle(changeLog);
    }

    private String buildTitle(ChangeLog changeLog) {
        StringBuilder b = new StringBuilder();
        b.append(changeLog.getRegionName());
        b.append(" - ");
        b.append(changeLog.getCountryName());
        b.append(" - ");
        b.append(changeLog.getChangeType());
        b.append(" - ");
        b.append(changeLog.getSiteName());
        b.append(" - ");
        b.append(changeLog.getSiteStatus());
        return b.toString();
    }

    /**
     * Following the advice here:
     * http://web.archive.org/web/20110514113830/http://diveintomark.org/archives/2004/05/28/howto-atom-id
     */
    private String buildUri(ChangeLog changeLog) {
        // Date there is the date this tag scheme was first used.
        return "tag:supercharge.info,2018-03-19:all-changes-" + changeLog.getId();
    }
}

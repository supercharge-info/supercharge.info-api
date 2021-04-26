package com.redshiftsoft.tesla_web_scrape;

import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla_web_scrape.model.Distances;
import com.redshiftsoft.tesla_web_scrape.model.Match;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Objects;

@Component
public class MatchFinder {

    public Match findMatchingWebLocation(Site localSite, List<TeslaSite> teslaSites) {
        TeslaSite closesTeslaSite = null;

        double minDistance = Double.MAX_VALUE;

        for (TeslaSite teslaSite : teslaSites) {
            double distance = Distances.distanceKm(localSite, teslaSite);
            if (Objects.equals(localSite.getLocationId(), teslaSite.getLocationId())) {
                return new Match(localSite, teslaSite);
            }
            if (distance < minDistance) {
                minDistance = distance;
                closesTeslaSite = teslaSite;
            }
        }

        // Didn't find a matching tesla site within a half mile.
        if (minDistance > .8) {
            return new Match(localSite, null);
        }
        // We found a matching tesla site within a half mile.
        else {
            return new Match(localSite, closesTeslaSite);
        }
    }

}

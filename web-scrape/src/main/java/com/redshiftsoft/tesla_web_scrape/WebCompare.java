package com.redshiftsoft.tesla_web_scrape;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.redshiftsoft.tesla_web_scrape.htmloutput.HtmlOutput;
import com.redshiftsoft.tesla_web_scrape.http.WebClient;
import com.redshiftsoft.tesla_web_scrape.http.WebScrapeResult;
import com.redshiftsoft.tesla_web_scrape.model.Match;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class WebCompare {

    @Resource
    private WebClient webClient;

    @Resource
    private SiteDAO siteDAO;

    @Resource
    private MatchFinder matchFinder;

    /**
     * Main entry point to web-scape functionality.
     */
    public String execute() throws IOException {

        WebScrapeResult webScrapeResult = webClient.getWebLocations();
        List<Site> openLocalSites = siteDAO.getAllSites().stream().filter(s -> s.isOpen() || s.isTempClosed()).collect(Collectors.toList());

        List<Match> matches = makeMatches(openLocalSites, webScrapeResult.getTeslaSites());

        Iterable<Match> nullLocalSiteList = matches.stream().filter(n -> n.getLocalSite() == null).collect(Collectors.toList());
        Iterable<Match> nullTeslaSiteList = matches.stream().filter(n -> n.getTeslaSite() == null).collect(Collectors.toList());

        Iterable<Match> goodMatches = matches.stream()
                .filter(n -> n.getLocalSite() != null && n.getTeslaSite() != null)
                .collect(Collectors.toList());

        return HtmlOutput.htmlResults(
                nullLocalSiteList,
                nullTeslaSiteList,
                goodMatches);
    }


    private List<Match> makeMatches(Iterable<Site> localSites, List<TeslaSite> teslaSites) {

        List<TeslaSite> unmatchedTeslaSites = Lists.newLinkedList(teslaSites);

        //
        // for each local site find tesla site.
        //
        // Non matches = WE HAVE IT, TESLA DOES NOT.
        //
        List<Match> matches = Lists.newArrayList();
        for (Site localSite : localSites) {
            Match match = matchFinder.findMatchingWebLocation(localSite, unmatchedTeslaSites);
            matches.add(match);
            if (match.getTeslaSite() != null) {
                unmatchedTeslaSites.remove(match.getTeslaSite());
            }
        }

        // sort just to facilitate debugging
        Collections.sort(matches);

        //
        // Remaining sites = TESLA HAS IT, WE DO NOT.
        //
        for (TeslaSite teslaSite : unmatchedTeslaSites) {
            matches.add(new Match(null, teslaSite));
        }

        return matches;
    }

}

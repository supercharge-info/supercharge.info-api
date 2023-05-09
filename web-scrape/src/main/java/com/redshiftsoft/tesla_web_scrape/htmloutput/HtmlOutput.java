package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla_web_scrape.model.Match;

public class HtmlOutput {

    public static String htmlResults(Iterable<Match> nullLocalSiteList,
                                     Iterable<Match> nullTeslaSiteList,
                                     Iterable<Match> goodMatches) {

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        // Missing local sites.
        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Table table1 = HtmlOutputMissingLocalSites.buildTable(nullLocalSiteList);


        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        // Missing Tesla sites
        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Table table2 = HtmlOutputMissingTeslaSites.buildTable(nullTeslaSiteList);


        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        // Field comparison for matching sites.
        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Table table3 = HtmlOutputFieldComparison.buildTable(goodMatches);


        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        // body
        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Body body = new Body();
        body.add(table1);
        body.add(new Br(), new Br(), new Br(), new Br());
        body.add(table2);
        body.add(new Br(), new Br(), new Br(), new Br());
        body.add(table3);

        Html html = new Html();
        html.add(body);

        return html.toString();
    }

}

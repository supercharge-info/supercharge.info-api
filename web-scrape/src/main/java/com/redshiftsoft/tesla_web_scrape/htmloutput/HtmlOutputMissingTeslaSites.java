package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla_web_scrape.model.Match;

class HtmlOutputMissingTeslaSites {

    static Table buildTable(Iterable<Match> nullTeslaSiteList) {
        Table table = new Table();
        table.addClass("view-table");
        table.setId("missing-tesla-sites-table");
        table.add(localSiteHeaderRow());
        int count = 0;
        int alphaInd = -1;
        for (Match match : nullTeslaSiteList) {
            Tr tr = matchToTable(match.getLocalSite());
            table.add(tr);
            count++;

            int curInd = match.getLocalSite().getName().charAt(0);
            if (curInd > alphaInd && curInd > 64 && curInd < 91) {
                alphaInd = curInd;
                tr.setId("missing-tesla-" + ((char)alphaInd));
            }
        }
        table.add(new Caption(String.format("%,d missing tesla sites (we have it Tesla does not)", count)));
        return table;
    }

    private static Tr localSiteHeaderRow() {
        Tr row = new Tr();
        row.add(new Th("id"));
        row.add(new Th("name"));
        row.add(new Th("location id"));
        row.add(new Th("status"));
        row.add(new Th("stall count"));
        row.add(new Th("latitude"));
        row.add(new Th("longitude"));
        row.add(new Th("date opened"));
        row.add(new Th("elevation (m)"));
        row.add(new Th("hours"));
        row.add(new Th("address"));
        row.add(new Th("url discuss"));
        return row;
    }

    private static Tr matchToTable(Site localSite) {
        Tr row = new Tr();
        row.add(new Td(new A(String.valueOf(localSite.getId()), "#edit", "click to populate edit form")));
        row.add(new Td(localSite.getName()));
        row.add(new Td(localSite.getLocationId()).addClass("break-word"));
        row.add(new Td(localSite.getStatus().toString()));
        row.add(new Td(String.valueOf(localSite.getStallCount())));
        row.add(new Td(String.valueOf(localSite.getGps().getLatitude())));
        row.add(new Td(String.valueOf(localSite.getGps().getLongitude())));
        row.add(new Td(String.valueOf(localSite.getDateOpened())));
        row.add(new Td(String.valueOf(localSite.getElevationMeters())));
        row.add(new Td(localSite.getHours()));
        row.add(new Td(localSite.getAddress().toString()));
        row.add(new Td(localSite.getUrlDiscuss()).addClass("break-word"));

        return row;
    }

}

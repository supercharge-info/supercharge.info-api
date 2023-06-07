package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla_web_scrape.model.Match;

class HtmlOutputMissingTeslaSites {

    static Table buildTable(Iterable<Match> nullTeslaSiteList, boolean china) {
        Tbody tbody = new Tbody();
        int count = 0;
        for (Match match : nullTeslaSiteList) {
            Tr tr = matchToTable(match.getLocalSite(), china);
            tbody.add(tr);
            count++;
        }

        Table table = new Table("view-table");
        table.setId("missing-tesla-sites-table" + (china ? "-china" : ""));
        table.add(new Caption(String.format("%,d missing open tesla sites (we have it Tesla does not)", count)), new Thead(localSiteHeaderRow()), tbody);
        return table;
    }

    private static Tr localSiteHeaderRow() {
        Tr row = new Tr();
        row.add(new Th("id"));
        row.add(new Th("name"));
        row.add(new Th("location id"));
        row.add(new Th("stall count"));
        row.add(new Th("latitude"));
        row.add(new Th("longitude"));
        row.add(new Th("date opened"));
        row.add(new Th("state"));
        row.add(new Th("country"));
        row.add(new Th("url discuss"));
        return row;
    }

    private static Tr matchToTable(Site localSite, boolean china) {
        Tr row = new Tr();
        row.add(new Td(new A(String.valueOf(localSite.getId()), "#edit", "click to populate edit form")));
        row.add(new Td(localSite.getName()));
        row.add(new Td(new A(localSite.getLocationId(), "https://www.tesla." + (china ? "cn" : "com") + "/findus/location/supercharger/" + localSite.getLocationId(), null, "_blank")).addClass("break-word"));
        row.add(new Td(String.valueOf(localSite.getStallCount())));
        row.add(new Td(String.valueOf(localSite.getGps().getLatitude())));
        row.add(new Td(String.valueOf(localSite.getGps().getLongitude())));
        row.add(new Td(String.valueOf(localSite.getDateOpened())));
        row.add(new Td(localSite.getAddress().getState()));
        row.add(new Td(localSite.getAddress().getCountry()));
        row.add(new Td(new A(localSite.getUrlDiscuss(), localSite.getUrlDiscuss(), null, "_blank")).addClass("break-word"));

        return row;
    }

}

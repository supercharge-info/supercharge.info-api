package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.google.common.base.Joiner;
import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla_web_scrape.model.CountryMap;
import com.redshiftsoft.tesla_web_scrape.model.Match;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;

class HtmlOutputMissingLocalSites {

    static Table buildTable(Iterable<Match> nullLocalSiteList) {
        Tbody tbody = new Tbody();
        int count = 0;
        for (Match match : nullLocalSiteList) {
            Tr tr = matchToTable(match.getTeslaSite());
            tbody.add(tr);
            count++;
        }

        Table table = new Table("view-table");
        table.setId("missing-local-sites-table");
        table.add(new Caption(String.format("%,d missing local sites (Tesla has it we do not)", count)), new Thead(teslaSiteHeaderRow()), tbody);
        return table;
    }


    private static Tr teslaSiteHeaderRow() {
        Tr row = new Tr();
        row.add(new Th("title"));
        row.add(new Th("location id"));
        row.add(new Th("stall count"));
        row.add(new Th("latitude"));
        row.add(new Th("longitude"));
        row.add(new Th("address"));
        row.add(new Th("city"));
        row.add(new Th("state"));
        row.add(new Th("country"));
        row.add(new Th("region"));
        row.add(new Th("hours"));
        row.add(new Th("chargers"));
        row.add(new Th("location types"));
        return row;
    }

    private static Tr matchToTable(TeslaSite teslaSite) {
        Tr row = new Tr();
        row.add(new Td(new A(teslaSite.getTitle(), "#edit", "click to populate edit form")));
        row.add(new Td(new A(teslaSite.getLocationId(), "https://www.tesla.com/findus/location/supercharger/" + teslaSite.getLocationId(), null, "_blank")).addClass("break-word"));
        row.add(new Td(String.valueOf(teslaSite.getStallCount())));
        row.add(new Td(String.valueOf(teslaSite.getLatitude())));
        row.add(new Td(String.valueOf(teslaSite.getLongitude())));
        row.add(new Td(teslaSite.getAddress()));
        row.add(new Td(teslaSite.getCity()));
        row.add(new Td(teslaSite.getState()));
        row.add(new Td(CountryMap.transform(teslaSite.getCountry())));
        row.add(new Td(teslaSite.getRegion()));
        row.add(new Td(teslaSite.getHours()));
        row.add(new Td(teslaSite.getChargersText()));
        row.add(new Td(Joiner.on(",\n").skipNulls().join(teslaSite.getLocationTypes())));
        return row;
    }

}

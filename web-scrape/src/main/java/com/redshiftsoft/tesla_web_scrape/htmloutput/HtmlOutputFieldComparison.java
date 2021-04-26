package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla_web_scrape.model.Distances;
import com.redshiftsoft.tesla_web_scrape.model.Match;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;

import java.util.Objects;

class HtmlOutputFieldComparison {

    static Table buildTable(Iterable<Match> goodMatches) {
        Table table = new Table();
        table.addClass("view-table");
        table.add(validationHeaderRow());
        int count = 0;
        for (Match match : goodMatches) {
            boolean allMatch = validationRow(table, match.getLocalSite(), match.getTeslaSite());
            if (!allMatch) {
                count++;
            }
        }
        table.add(new Caption(String.format("%,d common sites with field mismatches", count)));
        return table;
    }

    private static Tr validationHeaderRow() {
        return new Tr(
                new Th("site id"),
                new Th("which"),
                new Th("name"),
                new Th("Stalls"),
                new Th("locationId"),
                new Th("country"),
                new Th("city"),
                new Th("GPS")
        );
    }

    private static boolean validationRow(Table table, Site localSite, TeslaSite teslaSite) {
        Tr localRow = new Tr();
        localRow.addClass("local");
        Tr teslaRow = new Tr();
        teslaRow.addClass("tesla");

        Td td1 = new Td(String.valueOf(localSite.getId()));
        td1.setRowSpan(2);
        localRow.add(td1);

        localRow.add(new Td("Local"));
        teslaRow.add(new Td("Tesla"));

        localRow.add(new Td(localSite.getName()));
        teslaRow.add(new Td(teslaSite.getTitle()));

        boolean allMatch = compare(localRow, localSite.getStallCount(), teslaRow, teslaSite.getStallCount());
        allMatch = allMatch & compare(localRow, localSite.getLocationId(), teslaRow, teslaSite.getLocationId());
        allMatch = allMatch & compare(localRow, localSite.getAddress().getCountry(), teslaRow, transformCountry(teslaSite.getCountry()));
        allMatch = allMatch & compare(localRow, localSite.getAddress().getCity(), teslaRow, teslaSite.getCity());
        allMatch = allMatch & locationCompare(localRow, localSite, teslaRow, teslaSite);

        if (!allMatch) {
            table.add(localRow);
            table.add(teslaRow);
        }
        return allMatch;
    }

    private static boolean compare(Tr localRow, Object localValue, Tr teslaRow, Object teslaValue) {
        localValue = (localValue == null) ? "" : localValue;
        teslaValue = (teslaValue == null) ? "" : teslaValue;
        Td localCell = new Td(String.valueOf(localValue.toString()));
        localRow.add(localCell);
        Td teslaCell = new Td(String.valueOf(teslaValue.toString()));
        teslaRow.add(teslaCell);
        if (!Objects.equals(localValue, teslaValue)) {
            localCell.addClass("error");
            teslaCell.addClass("error");
            return false;
        }
        return true;
    }

    private static boolean locationCompare(Tr localRow, Site site, Tr teslaRow, TeslaSite teslaSite) {
        double distanceKm = Distances.distanceKm(site, teslaSite);
        double distanceM = distanceKm * 1000.0;
        Td localCell = new Td(String.format("%,.9f,%,.9f", site.getGps().getLatitude(), site.getGps().getLongitude()));
        Td teslaCell = new Td(String.format("%,.9f,%,.9f", teslaSite.getLatitude(), teslaSite.getLongitude()));
        localRow.add(localCell);
        teslaRow.add(teslaCell);
        if (distanceM > 100.0) {
            localCell.addClass("error").addClass("fixed");
            teslaCell.addClass("error").addClass("fixed");
            teslaCell.add(new Br());
            teslaCell.add(new CData(String.format("distance = %,.0fm", distanceM)));
            return false;
        }
        return true;
    }

    private static String transformCountry(String teslaCountry) {
        if ("United States".equalsIgnoreCase(teslaCountry)) {
            return "USA";
        } else if ("DK".equalsIgnoreCase(teslaCountry)) {
            return "Denmark";
        } else if ("Hong Kong".equalsIgnoreCase(teslaCountry)) {
            return "China";
        } else if ("Macau".equalsIgnoreCase(teslaCountry)) {
            return "China";
        }
        return teslaCountry;
    }

}

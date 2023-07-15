package com.redshiftsoft.tesla_web_scrape.htmloutput;

import com.redshiftsoft.element.*;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla_web_scrape.model.CountryMap;
import com.redshiftsoft.tesla_web_scrape.model.Distances;
import com.redshiftsoft.tesla_web_scrape.model.LocationType;
import com.redshiftsoft.tesla_web_scrape.model.Match;
import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;
import com.redshiftsoft.util.StringTools;

import java.text.Normalizer;
import java.util.Objects;

class HtmlOutputFieldComparison {

    static Table buildTable(Iterable<Match> goodMatches, boolean china) {
        Table table = new Table("view-table");
        table.setId("field-mismatches-table" + (china ? "-china" : ""));
        Tbody tbody = new Tbody();
        int count = 0;
        for (Match match : goodMatches) {
            boolean allMatch = validationRow(tbody, match.getLocalSite(), match.getTeslaSite(), china);
            if (!allMatch) {
                count++;
            }
        }
        table.add(new Caption(String.format("%,d common sites with field mismatches", count)), new Thead(validationHeaderRow()), tbody);
        return table;
    }

    private static Tr validationHeaderRow() {
        return new Tr(
                new Th("site id"),
                new Th("which"),
                new Th("name"),
                new Th("Stalls"),
                new Th("Other EVs"),
                new Th("locationId"),
                new Th("country"),
                new Th("city"),
                new Th("GPS")
        );
    }

    private static boolean validationRow(Tbody table, Site localSite, TeslaSite teslaSite, boolean china) {
        Tr localRow = new Tr();
        localRow.addClass("local");
        Tr teslaRow = new Tr();
        teslaRow.addClass("tesla");

        Td td1 = new Td(new A(String.valueOf(localSite.getId()), "#edit", "click to populate edit form"));
        td1.setRowSpan(2);
        localRow.add(td1);

        localRow.add(new Td("Local"));
        teslaRow.add(new Td("Tesla"));

        localRow.add(new Td(localSite.getName()));
        teslaRow.add(new Td(teslaSite.getTitle()));

        boolean allMatch = intCompare(localRow, localSite.getStallCount(), teslaRow, teslaSite.getStallCount());
        allMatch = allMatch & boolCompare(localRow, localSite.isOtherEVs(), teslaRow, teslaSite.getLocationTypes().contains(LocationType.PARTY));
        allMatch = allMatch & locationIdCompare(localRow, localSite.getLocationId(), teslaRow, teslaSite.getLocationId(), china);
        allMatch = allMatch & normalizedCompare(localRow, localSite.getAddress().getCountry(), teslaRow, CountryMap.transform(teslaSite.getCountry()));
        allMatch = allMatch & normalizedCompare(localRow, localSite.getAddress().getCity(), teslaRow, teslaSite.getCity());
        allMatch = allMatch & locationCompare(localRow, localSite, teslaRow, teslaSite);

        if (!allMatch) {
            table.add(localRow);
            table.add(teslaRow);
        }
        return allMatch;
    }

    private static boolean boolCompare(Tr localRow, boolean localValue, Tr teslaRow, boolean teslaValue) {
        Td localCell = new Td(String.valueOf(localValue));
        localRow.add(localCell);
        Td teslaCell = new Td(String.valueOf(teslaValue));
        teslaRow.add(teslaCell);
        if (localValue != teslaValue) {
            localCell.addClass("error");
            teslaCell.addClass("error");
            return false;
        }
        return true;
    }

    private static boolean intCompare(Tr localRow, int localValue, Tr teslaRow, int teslaValue) {
        Td localCell = new Td(String.valueOf(localValue));
        localRow.add(localCell);
        Td teslaCell = new Td(String.valueOf(teslaValue));
        teslaRow.add(teslaCell);
        if (localValue != teslaValue && teslaValue > 0) {
            localCell.addClass("error");
            teslaCell.addClass("error");
            return false;
        }
        return true;
    }

    private static boolean locationIdCompare(Tr localRow, String localValue, Tr teslaRow, String teslaValue, boolean china) {
        localValue = StringTools.toString(localValue);
        teslaValue = StringTools.toString(teslaValue);
        Td localCell = new Td(new A(localValue, "https://www.tesla." + (china ? "cn" : "com") + "/findus/location/supercharger/" + localValue, null, "_blank"));
        localRow.add(localCell);
        localCell.addClass("break-word");
        Td teslaCell = new Td(new A(teslaValue, "https://www.tesla." + (china ? "cn" : "com") + "/findus/location/supercharger/" + teslaValue, null, "_blank"));
        teslaRow.add(teslaCell);
        teslaCell.addClass("break-word");
        if (!StringTools.equalsIgnoreCase(normalized(localValue), normalized(teslaValue)) && StringTools.isNotEmpty(teslaValue)) {
            localCell.addClass("error");
            teslaCell.addClass("error");
            return false;
        }
        return true;
    }

    private static boolean normalizedCompare(Tr localRow, String localValue, Tr teslaRow, String teslaValue) {
        localValue = StringTools.toString(localValue);
        teslaValue = StringTools.toString(teslaValue);
        Td localCell = new Td(localValue);
        localRow.add(localCell);
        Td teslaCell = new Td(teslaValue);
        teslaRow.add(teslaCell);
        if (!Objects.equals(normalized(localValue), normalized(teslaValue)) && StringTools.isNotEmpty(teslaValue)) {
            if (teslaValue.length() > teslaValue.codePoints().filter(c -> c >= 0x100).count() * 2) {
                localCell.addClass("error");
                teslaCell.addClass("error");
                return false;
            }
        }
        return true;
    }

    private static boolean locationCompare(Tr localRow, Site site, Tr teslaRow, TeslaSite teslaSite) {
        double distanceKm = Distances.distanceKm(site, teslaSite);
        double distanceM = distanceKm * 1000.0;
        Td localCell = new Td(String.format("%,.9f, %,.9f", site.getGps().getLatitude(), site.getGps().getLongitude()));
        Td teslaCell = new Td(String.format("%,.9f, %,.9f", teslaSite.getLatitude(), teslaSite.getLongitude()));
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

    private static String normalized(String input) {
        return Normalizer.normalize(input.trim(), Normalizer.Form.NFD)
            .replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
    }

}

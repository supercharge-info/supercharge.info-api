package com.redshiftsoft.tesla_web_scrape.model;

import java.util.Map;

public class CountryMap {

    private static final Map<String, String> countryMap = Map.of(
        "UNITED STATES", "USA",
        "DK", "Denmark",
        "HONG KONG", "China",
        "MACAU", "China",
        "CHINA MAINLAND", "China"
    );

    public static String transform(String inCountry) {
        if (countryMap.containsKey(inCountry.toUpperCase())) {
            return countryMap.get(inCountry.toUpperCase());
        }
        return inCountry;
    }

}

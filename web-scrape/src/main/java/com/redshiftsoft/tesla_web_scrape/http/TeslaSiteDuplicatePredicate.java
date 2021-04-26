package com.redshiftsoft.tesla_web_scrape.http;

import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Predicate;
import java.util.logging.Logger;

/**
 * Tesla sometimes defines the exact same supercharger multiple times.  This predicates
 * is to eliminate duplicates from the string using the gps coordinates.
 */
class TeslaSiteDuplicatePredicate implements Predicate<TeslaSite> {

    private static final Logger LOG = Logger.getLogger(TeslaSiteDuplicatePredicate.class.getName());

    private final Map<String, TeslaSite> seenLocations = new HashMap<>();

    @Override
    public boolean test(TeslaSite teslaSite) {
        String location = teslaSite.getLatLngString();
        boolean result = !seenLocations.containsKey(location);
        if (result) {
            seenLocations.put(location, teslaSite);
        } else {
            String msg = String.format("\n" +
                            "\nSKIPPING  :\n%s" +
                            "\nDUPLICATES:\n%s" +
                            "\n\n",
                    teslaSite, seenLocations.get(location));
            LOG.warning(msg);
        }
        return result;
    }
}

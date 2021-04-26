package com.redshiftsoft.tesla_web_scrape.model;

import java.util.function.Predicate;

public class LocationTypePredicate implements Predicate<TeslaSite> {

    private final LocationType locationType;

    public LocationTypePredicate(LocationType locationType) {
        this.locationType = locationType;
    }

    @Override
    public boolean test(TeslaSite teslaSite) {
        return teslaSite.getLocationTypes().contains(locationType);
    }
}

package com.redshiftsoft.tesla_web_scrape.model;

import com.redshiftsoft.tesla.dao.site.Site;

public class Distances {

    private static final double EARTH_CIRCUMFERENCE_KM = 40075.0;
    private static final double DEGREES_PER_CIRCLE = 360.0;

    public static double distanceKm(Site site, TeslaSite teslaSite) {
        double angularDistance = distanceAngle(site, teslaSite);
        return gpsDistToKilometers(angularDistance);
    }

    /**
     * Angular distance (GPS degrees) between the two sites.
     */
    private static double distanceAngle(Site site, TeslaSite teslaSite) {
        double latDiff = site.getGps().getLatitude() - teslaSite.getLatitude();
        double lonDiff = site.getGps().getLongitude() - teslaSite.getLongitude();
        return Math.sqrt(latDiff * latDiff + lonDiff * lonDiff);
    }

    /**
     * Convert GPS distance to km.
     */
    private static double gpsDistToKilometers(double gpsDistance) {
        return EARTH_CIRCUMFERENCE_KM * gpsDistance / DEGREES_PER_CIRCLE;
    }
}

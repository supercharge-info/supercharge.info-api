package com.redshiftsoft.tesla.dao.site;

import com.google.common.base.Splitter;

import java.util.List;

public class SiteGPS {

    private static final Splitter GPS_SPLITTER = Splitter.on(",").trimResults();

    private double latitude;
    private double longitude;

    public SiteGPS() {
    }

    public SiteGPS(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public SiteGPS(String string) {
        List<String> parts = GPS_SPLITTER.splitToList(string);
        setLatitude(Double.parseDouble(parts.get(0)));
        setLongitude(Double.parseDouble(parts.get(1)));
    }

    @Override
    public String toString() {
        return "SiteGPS{" +
                "latitude=" + latitude +
                ", longitude=" + longitude +
                '}';
    }

    @Override
    public boolean equals(Object object) {
        return (object == this) || (object instanceof SiteGPS) &&
                (Math.abs(((SiteGPS) object).getLatitude() - this.getLatitude()) < 1e-8) &&
                (Math.abs(((SiteGPS) object).getLongitude() - this.getLongitude()) < 1e-8);
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}

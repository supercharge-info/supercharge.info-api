package com.redshiftsoft.tesla.dao.user;

import com.google.common.base.Preconditions;
import kdw.common.string.StringTools;

public class UserConfigMarker {

    private String name;
    private double lat;
    private double lng;

    public UserConfigMarker() {
    }

    public UserConfigMarker(String name, double lat, double lng) {
        Preconditions.checkArgument(!StringTools.isEmpty(name), "marker name cannot be empty");
        this.lat = lat;
        this.lng = lng;
        this.name = name;
    }

    // - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - -

    @Override
    public String toString() {
        return "UserConfigMarker{" +
                "name='" + name + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserConfigMarker)) return false;

        UserConfigMarker that = (UserConfigMarker) o;

        if (Double.compare(that.lat, lat) != 0) return false;
        if (Double.compare(that.lng, lng) != 0) return false;
        return name.equals(that.name);
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = name.hashCode();
        temp = Double.doubleToLongBits(lat);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(lng);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }

    // - - - - - - - - - - - - - - - - -
    // getter/setters
    // - - - - - - - - - - - - - - - - -

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

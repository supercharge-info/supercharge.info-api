package com.redshiftsoft.tesla.dao.site;

import java.util.Arrays;
import java.util.List;

public class Parking {

    private int parkingId;
    private String name;
    private String description;

    public Parking() {
    }

    public Parking(int parkingId, String name, String description) {
        this.parkingId = parkingId;
        this.name = name;
        this.description = description;
    }

    // - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - -

    private List<?> getIdentityFields() {
        return Arrays.asList(parkingId, name);
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Parking) &&
                this.getIdentityFields().equals(((Parking) other).getIdentityFields());
    }

    @Override
    public String toString() {
        return "Parking{" +
                "id=" + parkingId +
                ", name='" + name + "'" +
                ", description='" + description + "'" +
                "}";
    }

    // - - - - - - - - -
    // getters/setters
    // - - - - - - - - -

    public int getParkingId() {
        return parkingId;
    }

    public void setParkingId(int parkingId) {
        this.parkingId = parkingId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

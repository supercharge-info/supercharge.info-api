package com.redshiftsoft.tesla.dao.site;

import java.util.Arrays;
import java.util.List;

public class Region {

    private int id;
    private String name;

    public Region() {
    }

    public Region(int id, String name) {
        this.id = id;
        this.name = name;
    }

    // - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - -

    private List<?> getIdentityFields() {
        return Arrays.asList(id, name);
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Region) &&
                this.getIdentityFields().equals(((Region) other).getIdentityFields());
    }

    @Override
    public String toString() {
        return "Region{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    // - - - - - - - - -
    // getters/setters
    // - - - - - - - - -

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

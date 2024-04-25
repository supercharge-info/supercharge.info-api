package com.redshiftsoft.tesla.dao.site;

import java.util.Arrays;
import java.util.List;

public class OpenTo {

    private int openToId;
    private String name;
    private String description;

    public OpenTo() {
    }

    public OpenTo(int openToId, String name, String description) {
        this.openToId = openToId;
        this.name = name;
        this.description = description;
    }

    // - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - -

    private List<?> getIdentityFields() {
        return Arrays.asList(openToId, name);
    }

    @Override
    public int hashCode() {
        return getIdentityFields().hashCode();
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof OpenTo) &&
                this.getIdentityFields().equals(((OpenTo) other).getIdentityFields());
    }

    @Override
    public String toString() {
        return "OpenTo{" +
                "id=" + openToId +
                ", name='" + name + "'" +
                ", description='" + description + "'" +
                "}";
    }

    // - - - - - - - - -
    // getters/setters
    // - - - - - - - - -

    public int getOpenToId() {
        return openToId;
    }

    public void setOpenToId(int openToId) {
        this.openToId = openToId;
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

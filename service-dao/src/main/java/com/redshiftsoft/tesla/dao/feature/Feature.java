package com.redshiftsoft.tesla.dao.feature;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Feature {

    private Integer id;
    private String title;

    /* This is the date we want to show up on the UI as the date a feature was added. */
    private LocalDate addedDate;
    /* This is when the row last changed in the database, not visible to user */
    private LocalDateTime modifiedDate;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(LocalDate addedDate) {
        this.addedDate = addedDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(LocalDateTime modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

package com.redshiftsoft.tesla.web.mvc.feature;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.web.json.LocalDateDeserializer;
import com.redshiftsoft.tesla.web.json.LocalDateSerializer;
import com.redshiftsoft.tesla.web.json.LocalDateTimeSerializer;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class FeatureDTO {

    private Integer id;
    private String title;
    private String description;
    private LocalDate addedDate;
    private LocalDateTime modifiedDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @JsonDeserialize(using = LocalDateDeserializer.class)
    @JsonSerialize(using = LocalDateSerializer.class)
    public LocalDate getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(LocalDate addedDate) {
        this.addedDate = addedDate;
    }

    @JsonSerialize(using = LocalDateTimeSerializer.class)
    public LocalDateTime getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(LocalDateTime modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
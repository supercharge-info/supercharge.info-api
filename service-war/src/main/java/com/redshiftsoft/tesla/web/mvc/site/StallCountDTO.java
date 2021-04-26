package com.redshiftsoft.tesla.web.mvc.site;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.redshiftsoft.tesla.web.json.LocalDateSerializer;

import java.time.LocalDate;

public class StallCountDTO {

    private LocalDate date;
    private int stallCount;

    public StallCountDTO() {
    }

    public StallCountDTO(LocalDate date, int stallCount) {
        this.date = date;
        this.stallCount = stallCount;
    }

    @JsonSerialize(using = LocalDateSerializer.class)
    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getStallCount() {
        return stallCount;
    }

    public void setStallCount(int stallCount) {
        this.stallCount = stallCount;
    }


}

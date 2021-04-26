package com.redshiftsoft.tesla.dao.sitestallcount;

import java.time.LocalDate;

public class StallCount {

    private LocalDate date;

    private int stallCount;


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

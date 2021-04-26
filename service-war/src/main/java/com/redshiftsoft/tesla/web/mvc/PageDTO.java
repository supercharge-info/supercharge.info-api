package com.redshiftsoft.tesla.web.mvc;

import java.util.List;

public class PageDTO<T> {

    /* Some client side frameworks require response id that correlates with request. */
    private Integer pageId;

    /* Elements per page */
    private int pageSize;

    /* Total number of records in this data set (all pages) AFTER any filtering */
    private int recordCount;
    /* Total number of records in this data set (all pages) BEFORE any filtering */
    private int recordCountTotal;

    /* Data */
    private List<T> results;

    public PageDTO(Integer pageId,
                   int pageSize,
                   int recordCount,
                   int recordCountTotal,
                   List<T> result) {
        this.pageId = pageId;
        this.pageSize = pageSize;
        this.recordCount = recordCount;
        this.recordCountTotal = recordCountTotal;
        this.results = result;
    }

    public List<T> getResults() {
        return results;
    }

    public void setResults(List<T> results) {
        this.results = results;
    }

    public int getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(int recordCount) {
        this.recordCount = recordCount;
    }

    public int getRecordCountTotal() {
        return recordCountTotal;
    }

    public void setRecordCountTotal(int recordCountTotal) {
        this.recordCountTotal = recordCountTotal;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageId() {
        return pageId;
    }

    public void setPageId(Integer pageId) {
        this.pageId = pageId;
    }
}


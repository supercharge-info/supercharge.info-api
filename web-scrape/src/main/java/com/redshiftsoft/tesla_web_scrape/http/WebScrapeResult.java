package com.redshiftsoft.tesla_web_scrape.http;

import com.redshiftsoft.tesla_web_scrape.model.TeslaSite;

import java.util.List;

public class WebScrapeResult {

    private final String teslaJson;

    private final List<TeslaSite> teslaSites;

    public WebScrapeResult(String teslaJson, List<TeslaSite> teslaSites) {
        this.teslaJson = teslaJson;
        this.teslaSites = teslaSites;
    }

    public List<TeslaSite> getTeslaSites() {
        return teslaSites;
    }

    public String getTeslaJson() {
        return teslaJson;
    }
}

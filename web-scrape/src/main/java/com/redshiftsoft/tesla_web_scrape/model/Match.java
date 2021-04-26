package com.redshiftsoft.tesla_web_scrape.model;

import com.redshiftsoft.tesla.dao.site.Site;

public class Match implements Comparable<Match> {

    private final Site localSite;
    private final TeslaSite teslaSite;

    public Match(Site localSite, TeslaSite teslaSite) {
        this.localSite = localSite;
        this.teslaSite = teslaSite;
    }

    public Site getLocalSite() {
        return localSite;
    }

    public TeslaSite getTeslaSite() {
        return teslaSite;
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("Match{\n");
        b.append("localSite = " + localSite + "\n");
        b.append("------\n");
        b.append(", teslaSite = " + teslaSite + "\n");
        b.append('}');
        return b.toString();
    }

    @Override
    public int compareTo(Match o) {
        String thisSiteName = (this.localSite == null) ? "" : this.localSite.getName();
        String thatSiteName = o.localSite == null ? "" : o.localSite.getName();
        return thisSiteName.compareTo(thatSiteName);
    }

}

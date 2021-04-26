package com.redshiftsoft.tesla.web.mvc.feed;

import com.redshiftsoft.tesla.dao.changelog.ChangeLogDAO;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import com.sun.syndication.feed.synd.*;
import com.sun.syndication.io.FeedException;
import com.sun.syndication.io.SyndFeedOutput;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("/feed")
@Controller
public class FeedController {

    private static final String FEED_TITLE = "supercharge.info Updates";
    private static final String FEED_DESCRIPTION = "Supercharger Changes";
    private static final List<SyndLink> LINKS = createLinks();

    @Resource
    private ChangeLogDAO changeLogDAO;
    @Resource
    private FeedEntryFunction feedEntryFunction;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<SyndEntryImpl> cachingHandler;

    @PostConstruct
    public void postConstruct() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "feed", () ->
                changeLogDAO.getList(100).stream().map(feedEntryFunction).collect(Collectors.toList())
        );
    }

    @RequestMapping(method = RequestMethod.GET, value = "/atom.xml")
    public void feed(HttpServletResponse response) throws IOException, FeedException {

        response.setContentType("application/atom+xml; charset=UTF-8");

        OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), StandardCharsets.UTF_8);
        SyndFeedOutput output = new SyndFeedOutput();
        output.output(createFeed(), writer);
        writer.close();
    }

    private SyndFeed createFeed() {
        List<SyndEntryImpl> feedEntries = cachingHandler.getValues();

        SyndFeed feed = new SyndFeedImpl();
        feed.setFeedType("atom_1.0");
        feed.setUri("https://supercharge.info/");
        feed.setTitle(FEED_TITLE);
        feed.setDescription(FEED_DESCRIPTION);
        feed.setPublishedDate(feedEntries.get(0).getPublishedDate());
        feed.setLinks(LINKS);
        feed.setEntries(feedEntries);

        return feed;
    }

    private static List<SyndLink> createLinks() {

        SyndLinkImpl selfLink = new SyndLinkImpl();
        selfLink.setHref("https://supercharge.info/service/supercharge/feed/atom.xml");
        selfLink.setRel("self");

        SyndLinkImpl altLink = new SyndLinkImpl();
        altLink.setHref("https://supercharge.info/");
        altLink.setRel("alternate");

        List<SyndLink> links = new ArrayList<>();
        links.add(selfLink);
        links.add(altLink);
        return links;
    }

}

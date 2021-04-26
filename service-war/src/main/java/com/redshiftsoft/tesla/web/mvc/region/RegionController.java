package com.redshiftsoft.tesla.web.mvc.region;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.site.RegionDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Controller
public class RegionController {

    @Resource
    private RegionDAO regionDAO;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<Region> cachingHandler;

    @PostConstruct
    public void postConstruct() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "region", regionDAO);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/region")
    @ResponseBody
    public List<Region> regions() {
        return cachingHandler.getValues();
    }


}

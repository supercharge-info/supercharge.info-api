package com.redshiftsoft.tesla.web.mvc.parking;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.dao.site.OpenTo;
import com.redshiftsoft.tesla.dao.site.OpenToDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Controller
public class OpenToController {

    @Resource
    private OpenToDAO openToDAO;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<OpenTo> cachingHandler;

    @PostConstruct
    public void postConstruct() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "opento", openToDAO);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/opento")
    @ResponseBody
    public List<OpenTo> openTo() {
        return cachingHandler.getValues();
    }

}

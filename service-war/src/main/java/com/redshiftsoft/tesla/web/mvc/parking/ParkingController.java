package com.redshiftsoft.tesla.web.mvc.parking;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.dao.site.Parking;
import com.redshiftsoft.tesla.dao.site.ParkingDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Controller
public class ParkingController {

    @Resource
    private ParkingDAO parkingDAO;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<Parking> cachingHandler;

    @PostConstruct
    public void postConstruct() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "parking", parkingDAO);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/parking")
    @ResponseBody
    public List<Parking> parking() {
        return cachingHandler.getValues();
    }

}

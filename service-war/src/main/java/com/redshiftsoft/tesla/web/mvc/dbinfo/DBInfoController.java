package com.redshiftsoft.tesla.web.mvc.dbinfo;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfo;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class DBInfoController {

    @Resource
    private DBInfoDAO dbInfoDAO;

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/databaseInfo")
    public DBInfo allChanges() {
        long lastModified = dbInfoDAO.getLastModifiedCached();
        return new DBInfo(lastModified);
    }

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/setLastModifiedToNow")
    public String setLastModifiedToNow() {
        dbInfoDAO.setLastModifiedToNow();
        return "ok";
    }

}
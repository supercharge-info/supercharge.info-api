package com.redshiftsoft.tesla.web.mvc.version;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/version")
public class VersionController {

    private final String buildVersion;
    private final String buildTimestamp;


    @Autowired
    public VersionController(@Value("${buildVersion}") String buildVersion,
                             @Value("${buildTimestamp}") String buildTimestamp) {
        this.buildVersion = buildVersion;
        this.buildTimestamp = buildTimestamp;
    }

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/number")
    public String getTempData() {
        return buildVersion;
    }

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/timestamp")
    public String buildTimestamp() {
        return buildTimestamp;
    }

}

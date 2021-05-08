package com.redshiftsoft.tesla.web.mvc.system;

import com.google.common.collect.Maps;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;
import java.util.Properties;

@Controller
@RequestMapping("/system")
public class SystemController {

    @PreAuthorize("hasRole('admin')")
    @RequestMapping(value = "/properties", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, String> systemProperties() {
        Map<String, String> propsMap = Maps.newTreeMap();
        Properties props = System.getProperties();
        for (Object key : props.keySet()) {
            String keyString = key.toString();
            String valueString = props.getProperty(keyString);
            propsMap.put(keyString, valueString);
        }
        return propsMap;
    }

}

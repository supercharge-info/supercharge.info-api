package com.redshiftsoft.tesla.web.mvc.validation;

import com.redshiftsoft.tesla.dao.validation.ValidationDAO;
import com.redshiftsoft.tesla.dao.validation.ValidationResult;
import com.redshiftsoft.tesla_web_scrape.WebCompare;
import com.redshiftsoft.tesla_web_scrape.http.WebClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/validation")
public class ValidationController {

    @Resource
    private ValidationDAO validationDAO;

    @Resource
    private WebCompare webCompare;

    @Resource
    private WebClient webClient;

    /**
     * Results of DB validations.
     */
    @RequestMapping(method = RequestMethod.GET, value = "/database")
    @ResponseBody
    public List<ValidationResult> doDatabaseValidations() {
        return validationDAO.doValidations();
    }


    @RequestMapping(method = RequestMethod.GET, value = "/webscrape")
    @ResponseBody
    public String getWebScapeValidationReport() throws IOException {
        return webCompare.execute();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/tesla-source")
    @ResponseBody
    public RawJson viewTeslaJson() {
        String allJson = webClient.getAllJson();
        return new RawJson(allJson);
    }


}

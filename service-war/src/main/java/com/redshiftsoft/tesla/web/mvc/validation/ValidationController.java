package com.redshiftsoft.tesla.web.mvc.validation;

import com.redshiftsoft.tesla.dao.validation.ValidationDAO;
import com.redshiftsoft.tesla.dao.validation.ValidationResult;
import com.redshiftsoft.tesla_web_scrape.WebCompare;
import com.redshiftsoft.tesla_web_scrape.http.WebClient;
import com.redshiftsoft.tesla_web_scrape.http.WebScrapeResult;
import org.springframework.security.access.prepost.PreAuthorize;
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
    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/database")
    @ResponseBody
    public List<ValidationResult> doDatabaseValidations() {
        return validationDAO.doValidations();
    }


    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/webscrape", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getWebScapeValidationReport() throws IOException {
        return webCompare.execute();
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/webscrape-china", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getChinaValidationReport() throws IOException {
        return webCompare.execute(true);
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/tesla-source")
    @ResponseBody
    public RawJson viewTeslaJson() {
        String allJson = webClient.getAllJson(WebClient.TESLA_JSON_URL);
        return new RawJson(allJson);
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/china-source")
    @ResponseBody
    public RawJson viewChinaJson() {
        String allJson = webClient.getAllJson(WebClient.CN_TESLA_JSON_URL);
        return new RawJson(allJson);
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/processed-source")
    @ResponseBody
    public RawJson viewProcessedJson() throws IOException {
        WebScrapeResult processed = webClient.getWebLocations();
        return new RawJson(processed.getTeslaJson());
    }

    @PreAuthorize("hasAnyRole('editor')")
    @RequestMapping(method = RequestMethod.GET, value = "/processed-china-source")
    @ResponseBody
    public RawJson viewProcessedChinaJson() throws IOException {
        WebScrapeResult processed = webClient.getChinaLocations();
        return new RawJson(processed.getTeslaJson());
    }


}

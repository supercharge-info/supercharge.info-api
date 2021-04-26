package com.redshiftsoft.tesla.web.mvc.country;

import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.tesla.dao.site.CountryDAO;
import com.redshiftsoft.tesla.web.mvc.CachingHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;
import java.util.function.Supplier;
import java.util.stream.Collectors;

@Controller
public class CountryController {

    private static final CountryDTOFunction COUNTRY_DTO_FUNCTION = new CountryDTOFunction();

    @Resource
    private CountryDAO countryDAO;
    @Resource
    private DBInfoDAO dbInfoDAO;

    private CachingHandler<CountryDTO> allCountryCache;
    private CachingHandler<CountryDTO> referencedCountryCache;

    @PostConstruct
    public void postConstruct() {
        allCountryCache = new CachingHandler<>(dbInfoDAO, "countryAll", new AllCountrySupplier());
        referencedCountryCache = new CachingHandler<>(dbInfoDAO, "countryRef", new ReferencedCountrySupplier());
    }

    /* Returns JUST the countries referenced by a supercharger site. */
    @RequestMapping(method = RequestMethod.GET, value = "/country")
    @ResponseBody
    public List<CountryDTO> getReferenced() {
        return referencedCountryCache.getValues();
    }

    /* Returns all countries. */
    @RequestMapping(method = RequestMethod.GET, value = "/countryAll")
    @ResponseBody
    public List<CountryDTO> getAll() {
        return allCountryCache.getValues();
    }

    private class AllCountrySupplier implements Supplier<List<CountryDTO>> {
        @Override
        public List<CountryDTO> get() {
            return countryDAO.getAll().stream().map(COUNTRY_DTO_FUNCTION).collect(Collectors.toList());
        }
    }

    private class ReferencedCountrySupplier implements Supplier<List<CountryDTO>> {
        @Override
        public List<CountryDTO> get() {
            return countryDAO.getReferenced().stream().map(COUNTRY_DTO_FUNCTION).collect(Collectors.toList());
        }
    }

}

package com.redshiftsoft.tesla.web.mvc.country;

import com.redshiftsoft.tesla.dao.site.Country;

import java.util.function.Function;

public class CountryDTOFunction implements Function<Country, CountryDTO> {

    @Override
    public CountryDTO apply(Country country) {
        CountryDTO countryDTO = new CountryDTO();

        countryDTO.setId(country.getId());
        countryDTO.setName(country.getName());
        countryDTO.setCode(country.getCode());
        countryDTO.setRegionId(country.getRegionId());
        countryDTO.setRegion(country.getRegionName());

        return countryDTO;
    }

}

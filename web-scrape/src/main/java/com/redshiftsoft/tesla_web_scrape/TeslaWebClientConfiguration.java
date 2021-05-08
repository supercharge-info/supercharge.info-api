package com.redshiftsoft.tesla_web_scrape;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = {"com.redshiftsoft.tesla_web_scrape"})
@Import(DAOConfiguration.class)
public class TeslaWebClientConfiguration {
}

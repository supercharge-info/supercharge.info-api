package com.redshiftsoft.tesla.dao;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.redshiftsoft.tesla.dao"})
@PropertySource(ignoreResourceNotFound = false, value = "classpath:/com/redshiftsoft/tesla/build.properties")
@PropertySource(ignoreResourceNotFound = false, value = "classpath:/com/redshiftsoft/tesla/dev-config.properties")
@PropertySource(ignoreResourceNotFound = true, value = "file:${api.config.location:/non-existing-path.properties}")
public class DAOConfiguration {

    @Bean
    public BasicDataSource dataSource(
            @Value("${db.url}") String jdbcUrl,
            @Value("${db.user}") String dbUser,
            @Value("${db.password}") String dbPassword,
            @Value("${db.schema}") String dbSchema
    ) {
        BasicDataSource ds = new org.apache.commons.dbcp2.BasicDataSource();
        ds.setDriverClassName("org.postgresql.Driver");
        ds.setUrl(jdbcUrl);
        ds.setDefaultSchema(dbSchema);
        ds.setUsername(dbUser);
        ds.setPassword(dbPassword);

        ds.setInitialSize(2);
        ds.setMaxTotal(6);

        ds.setDefaultAutoCommit(false);

        return ds;
    }

    @Bean
    public DataSourceTransactionManager transactionManager(BasicDataSource dataSource) {
        DataSourceTransactionManager manager = new DataSourceTransactionManager();
        manager.setDataSource(dataSource);
        manager.setNestedTransactionAllowed(true);
        manager.setValidateExistingTransaction(true);
        return manager;
    }

    @Bean
    public JdbcTemplate jdbcTemplate(BasicDataSource dataSource) {
        JdbcTemplate template = new JdbcTemplate(dataSource);
        template.setDatabaseProductName("PostgreSQL");
        return template;
    }

}

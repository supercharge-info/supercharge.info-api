alter table user_config add column chart_region_id integer;

alter table user_config add column chart_country_id integer;

alter table user_config add
CONSTRAINT user_config_chart_region_id_fk FOREIGN KEY (chart_region_id) REFERENCES region (region_id);

alter table user_config add
  CONSTRAINT user_config_chart_country_id_fk FOREIGN KEY (chart_country_id) REFERENCES country (country_id);
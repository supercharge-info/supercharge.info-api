-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
alter table changelog add column stall_count int null;

-- initially set every changelog's stall_count to its site's current stall_count
UPDATE changelog c SET stall_count = s.stall_count
FROM site s WHERE c.site_id = s.site_id;

alter table user_config
add column solar_canopy      BOOLEAN,
add column battery           BOOLEAN,
add column stall_type        VARCHAR(20) ARRAY,
add column plug_type         VARCHAR(10) ARRAY,
add column parking_id        INTEGER ARRAY,
add column search            VARCHAR(200);


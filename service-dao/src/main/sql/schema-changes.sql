-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
alter table changelog add column stall_count int null;

alter table user_config
add column solar_canopy      BOOLEAN,
add column battery           BOOLEAN,
add column stall_type        VARCHAR(20) ARRAY,
add column plug_type         VARCHAR(10) ARRAY,
add column parking_id        INTEGER ARRAY,
add column search            VARCHAR(200);


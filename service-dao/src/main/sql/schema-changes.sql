-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
alter table changelog add column stall_count int null;

-- initially set every changelog's stall_count to its site's current stall_count
UPDATE changelog c SET stall_count = s.stall_count
FROM site s WHERE c.site_id = s.site_id;

create table open_to
(
    open_to_id    serial primary key,
    name          varchar(100) not null,
    description   text null
);

-- Pre-populate open-to options
INSERT INTO open_to (name, description) VALUES
    ('Tesla', 'Open to Tesla only'),
    ('NACS', 'Open to NACS-compatible vehicles (NACS port or adapter required)'),
    ('Other', 'Open to other EVs (e.g. CCS, GB/T)');

alter table user_config
add column solar_canopy      BOOLEAN,
add column battery           BOOLEAN,
add column stall_type        VARCHAR(20) ARRAY,
add column plug_type         VARCHAR(10) ARRAY,
add column parking_id        INTEGER ARRAY,
add column open_to_id        INTEGER ARRAY,
add column search            VARCHAR(200);


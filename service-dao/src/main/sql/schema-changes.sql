-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
alter type site_status_type add value 'VOTING';
alter type site_status_type add value 'PLAN';
alter type site_status_type add value 'EXPANDING';

create table parking
(
    parking_id    serial primary key,
    name          varchar(100) not null,
    description   text null
);
-- not sure why this needs to be done separately/explicitly, considering the contents of 03-permissions.sql
grant all privileges on parking to supercharge_user;

alter table site 
    add column stalls_urban      int4                           null,
    add column stalls_v2         int4                           null,
    add column stalls_v3         int4                           null,
    add column stalls_v4         int4                           null,
    add column stalls_other      int4                           null,
    add column stalls_accessible int4                           null,
    add column stalls_trailer    int4                           null,
    add column plugs_tpc         int4                           null,
    add column plugs_nacs        int4                           null,
    add column plugs_ccs1        int4                           null,
    add column plugs_ccs2        int4                           null,
    add column plugs_type2       int4                           null,
    add column plugs_gbt         int4                           null,
    add column plugs_other       int4                           null,
    add column plugs_multi       int4                           null,
    add column parking_id        int4                           null,
    add column facility_name     varchar(200)                   null     default null::character varying,
    add column facility_hours    varchar(100)                   null     default null::character varying,
    add column access_notes      varchar(1000)                  null     default null::character varying,
    add column address_notes     varchar(1000)                  null     default null::character varying,
    add column plugshare_id      int8                           null,
    add column osm_id            int8                           null;

alter table site
    add constraint site_parking_id_fkey foreign key (parking_id) references parking(parking_id) on delete cascade on update cascade;

alter table country
    add column plugs_tpc        boolean      not null default true,
    add column plugs_nacs       boolean      not null default true,
    add column plugs_ccs1       boolean      not null default true,
    add column plugs_ccs2       boolean      not null default true,
    add column plugs_type2      boolean      not null default true,
    add column plugs_gbt        boolean      not null default true;

-- pre-populate valid plug types per country
UPDATE country SET plugs_gbt = false WHERE name != 'China';
UPDATE country SET plugs_tpc = false, plugs_nacs = false, plugs_ccs1 = false WHERE region_id IN (101, 102) AND name NOT IN ('Japan', 'South Korea', 'Taiwan');
UPDATE country SET plugs_type2 = false, plugs_ccs2 = false WHERE region_id = 100 OR name IN ('Japan', 'South Korea');
UPDATE country SET plugs_ccs1 = false WHERE name IN ('Japan', 'Taiwan');

-- Pre-populate stalls based on max power
UPDATE site SET stalls_urban = stall_count WHERE power_kwatt <= 72;
UPDATE site SET stalls_v2 = stall_count WHERE power_kwatt BETWEEN 73 AND 199;
UPDATE site SET stalls_v3 = stall_count WHERE power_kwatt >= 200; -- a few of these are V4 at the time of release and will have to be updated manually

-- Pre-populate plugs based on geography, max power, and existing other_evs flag

-- All stalls in China are GB/T, except Hong Kong and Macau which are CCS2 (with one weird exception in Macau to be updated manually)
UPDATE site s SET plugs_gbt = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'China' AND a.state NOT IN ('Hong Kong', 'Macau');
UPDATE site s SET plugs_ccs2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'China' AND a.state IN ('Hong Kong', 'Macau');

-- All stalls in Jordan are Type2
UPDATE site s SET plugs_type2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'Jordan';

-- Taiwan is mostly dual-cable CCS2+TPC but some will have to be updated manually
UPDATE site s SET plugs_ccs2 = s.stall_count, plugs_tpc = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'Taiwan';

-- North America V2 + Urban, and all stalls in Japan + South Korea, are TPC if they're not already marked open to other EVs
UPDATE site s SET plugs_tpc = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND ((s.power_kwatt < 200 AND c.region_id = 100) OR c.name IN ('Japan', 'South Korea')) AND NOT s.other_evs;

-- North America + South Korea stalls that are already marked open to other EVs are all MagicDock (NACS+CCS1)
UPDATE site s SET plugs_nacs = s.stall_count, plugs_ccs1 = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND (c.region_id = 100 OR c.name = 'South Korea') AND s.other_evs;

-- North America V3 + V4 stalls are all NACS if they're not already marked open to other EVs
UPDATE site s SET plugs_nacs = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id = 100 AND s.power_kwatt = 250 AND NOT s.other_evs;

-- Europe V2 stalls are dual-cable CCS2+Type2
UPDATE site s SET plugs_ccs2 = s.stall_count, plugs_type2 = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id = 101 AND s.power_kwatt BETWEEN 73 AND 199;

-- Presume the rest of the world's V2 stalls have CCS2 plugs
UPDATE site s SET plugs_ccs2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id != 100 AND c.name NOT IN ('China', 'Japan', 'Jordan', 'South Korea', 'Taiwan')
AND NOT (c.region_id = 101 AND s.power_kwatt BETWEEN 73 AND 199);

-- Pre-populate parking options
INSERT INTO parking (name, description) VALUES 
    ('Free at all times', 'Unrestricted at all times with no fee to park'),
    ('Free with validation', 'No fee to park for the first N minutes of parking with proof of purchase from certain merchants'),
    ('Free initially', 'No fee to park for the first N minutes of parking'),
    ('Free off-peak', 'No fee to park outside of peak hours/days (e.g. nights, weekends)'),
    ('Paid - self parking', 'Fee to park at all times'),
    ('Paid - valet parking', 'Fee to park at all times with valet assistance'),
    ('Other - see notes', 'Details provided in "Access Notes"');

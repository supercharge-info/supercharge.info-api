-- =================================================================================================================
--
-- TABLES
--
-- =================================================================================================================
set search_path to supercharge;


drop table if exists feature;
drop table if exists user_route_waypoint;
drop table if exists user_route;
drop table if exists user_config_marker;
drop table if exists user_config;
drop table if exists user_reset;
drop table if exists changelog;
drop table if exists site_change;
drop table if exists parking;
drop table if exists site;
drop table if exists address;
drop table if exists country;
drop table if exists region;
drop table if exists login;
drop table if exists user_role;
drop table if exists roles;
drop table if exists users;
drop table if exists site_stall_count;

-- -----------------------------------------------------------
-- REGION
-- -----------------------------------------------------------
create table region
(
    region_id     serial primary key,
    name          varchar(100) not null unique,
    modified_date timestamptz  not null default current_timestamp
);
alter sequence region_region_id_seq restart with 150;

-- -----------------------------------------------------------
-- country
-- -----------------------------------------------------------
create table country
(
    country_id       serial primary key,
    name             varchar(100) not null unique,
    code             varchar(2)   not null unique,
    region_id        int          not null,
    state_required   boolean      not null default false,
    modified_date    timestamptz  not null default current_timestamp,
    plugs_tpc        boolean      not null default true,
    plugs_nacs       boolean      not null default true,
    plugs_ccs1       boolean      not null default true,
    plugs_ccs2       boolean      not null default true,
    plugs_type2      boolean      not null default true,
    plugs_gbt        boolean      not null default true,
    foreign key (region_id) references region (region_id)
        on update cascade
        on delete cascade
);
alter sequence country_country_id_seq restart with 1000;

-- -----------------------------------------------------------
-- ADDRESS - The relationship between site and address is currently 1-1.
-- If two sites have the same address we insert two rows in address.  This
-- makes it easier when deleting a site, we don't have to count references
-- to a given address row before deleting it.
-- -----------------------------------------------------------
create table address
(
    address_id    serial primary key,
    street        varchar(100) not null,
    city          varchar(100) not null,
    state         varchar(50),
    zip           varchar(50),
    country_id    int          not null,
    modified_date timestamptz  not null default current_timestamp,
    version       integer      not null default 1,

    foreign key (country_id) references country (country_id)
        on update cascade
        on delete cascade
);
alter sequence address_address_id_seq restart with 2000000;

-- -----------------------------------------------------------
-- PARKING - lookup table
-- -----------------------------------------------------------
create table parking
(
    parking_id    serial primary key,
    name          varchar(100) not null,
    description   text null
);

-- -----------------------------------------------------------
-- SITE
-- -----------------------------------------------------------
create type site_status_type as enum ('CLOSED_PERM','CLOSED_TEMP', 'PERMIT', 'CONSTRUCTION', 'OPEN', 'VOTING', 'PLAN', 'EXPANDING');

create table site
(
    site_id           serial                         not null,
    location_id       varchar(300)                   null     default null::character varying,
    "name"            varchar(100)                   not null,
    status            "site_status_type"             not null,
    opened_date       timestamptz                    null,
    hours             varchar(100)                   null     default null::character varying,
    enabled           bool                           not null default true,
    counted           bool                           not null,
    address_id        int4                           not null,
    gps_latitude      float8                         not null,
    gps_longitude     float8                         not null,
    elevation_meters  int4                           not null,
    url_discuss       varchar(200)                   null     default null::character varying,
    stall_count       int4                           null,
    power_kwatt       int4                           not null default 0,
    has_solar_canopy  bool                           not null default false,
    has_battery       bool                           not null default false,
    developer_notes   varchar(1000)                  null     default null::character varying,
    modified_date     timestamptz                    not null default now(),
    "version"         int4                           not null default 1,
    other_evs         bool                           not null default false, -- TO BE DEPRECATED
    stalls_urban      int4                           null,
    stalls_v2         int4                           null,
    stalls_v3         int4                           null,
    stalls_v4         int4                           null,
    stalls_other      int4                           null,
    stalls_accessible int4                           null,
    stalls_trailer    int4                           null,
    plugs_tpc         int4                           null,
    plugs_nacs        int4                           null,
    plugs_ccs1        int4                           null,
    plugs_ccs2        int4                           null,
    plugs_type2       int4                           null,
    plugs_gbt         int4                           null,
    plugs_other       int4                           null,
    plugs_multi       int4                           null,
    parking_id        int4                           null,
    facility_name     varchar(200)                   null     default null::character varying,
    facility_hours    varchar(100)                   null     default null::character varying,
    access_notes      varchar(1000)                  null     default null::character varying,
    address_notes     varchar(1000)                  null     default null::character varying,
    plugshare_id      int8                           null,
    osm_id            int8                           null,
    constraint address_id_unique unique (address_id),
    constraint name_unique unique (name),
    constraint site_id_unique primary key (site_id)
);
alter table site
    add constraint site_address_id_fkey foreign key (address_id) references address(address_id) on delete cascade on update cascade;
alter table site
    add constraint site_parking_id_fkey foreign key (parking_id) references parking(parking_id) on delete cascade on update cascade;
alter sequence site_site_id_seq restart with 100000;

-- -----------------------------------------------------------
-- SITE_STALL_COUNT
-- -----------------------------------------------------------
create table site_stall_count
(
    day   date primary key,
    count integer not null
);

-- -----------------------------------------------------------
-- role
-- -----------------------------------------------------------
create table roles
(
    role_id     int primary key,
    role_name   varchar(50)  not null unique,
    description varchar(500) not null
);

-- -----------------------------------------------------------
-- USERS -- plural because user is a postgres keyword
-- -----------------------------------------------------------
CREATE TABLE users
(
    user_id        int4         NOT NULL,
    username       varchar(40)  NOT NULL,
    password_salt  bpchar(64)   NOT NULL,
    password_hash  bpchar(64)   NOT NULL,
    email          varchar(50)  NULL,
    enabled        bool         NOT NULL,
    created_date   timestamptz  NOT NULL,
    modified_date  timestamptz  NOT NULL,
    description    varchar(500) NULL,
    email_verified bool         NOT NULL DEFAULT false,
    CONSTRAINT users_email_key UNIQUE (email),
    CONSTRAINT users_pkey PRIMARY KEY (user_id),
    CONSTRAINT users_username_key UNIQUE (username)
);
CREATE UNIQUE INDEX users_email_lower_idx ON supercharge.users USING btree (lower((email)::text));
CREATE UNIQUE INDEX users_username_lower_idx ON supercharge.users USING btree (lower((username)::text));


-- -----------------------------------------------------------
-- user_role
-- -----------------------------------------------------------
create table user_role
(
    user_id      int         not null references users (user_id) on delete cascade,
    role_id      int         not null references roles (role_id) on delete cascade,
    created_date TIMESTAMPTZ NOT NULL default now(),
    constraint user_role_user_id_role_id_unique unique (user_id, role_id)
);


-- -----------------------------------------------------------
-- CHANGE LOG
-- -----------------------------------------------------------
CREATE TYPE CHANGE_TYPE AS ENUM ('ADD', 'UPDATE');

create table changelog
(
    id            serial primary key,
    site_id       int              not null,
    change_date   timestamptz      not null,
    change_type   change_type      not null,
    site_status   site_status_type not null,
    modified_date timestamptz      not null default current_timestamp,
    notify        boolean          not null default true,
    user_id       int              null,
    CONSTRAINT fk_changelog_1 foreign key (site_id) references site (site_id)
        on update cascade
        on delete cascade,
    CONSTRAINT fk_changelog_2 foreign key (user_id) references users (user_id)
        on update cascade
        on delete cascade
);
alter sequence changelog_id_seq restart with 100000;
CREATE INDEX changelog_site_id_change_date ON changelog (site_id, change_date);

-- -----------------------------------------------------------
-- SITE CHANGES
-- -----------------------------------------------------------
CREATE TABLE site_change
(
    site_id     INT          NOT NULL,
    user_id     INT          NOT NULL,
    version     INT          NOT NULL,
    change_date TIMESTAMPTZ  NOT NULL,
    field_name  VARCHAR(100) NOT NULL,
    old_value   VARCHAR(1000),
    new_value   VARCHAR(1000),

    CONSTRAINT unique_field_name UNIQUE (site_id, field_name, version),
    FOREIGN KEY (site_id) REFERENCES site (site_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- -----------------------------------------------------------------------------
-- TABLE: user_reset_password
-- -----------------------------------------------------------------------------
CREATE TABLE user_reset_password
(
    user_id      INT         NOT NULL,
    reset_key    VARCHAR(26) NOT NULL,
    request_time TIMESTAMPTZ NOT NULL,
    used_time    TIMESTAMPTZ,

    FOREIGN KEY (user_id) REFERENCES users (user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE

);

-- -----------------------------------------------------------
-- LOGIN
--  -----------------------------------------------------------
CREATE TYPE LOGIN_RESULT_TYPE AS ENUM ('SUCCESS', 'INVALID_CREDENTIALS', 'DISABLED', 'LOCKED', 'CHANGED');
CREATE TYPE LOGIN_TYPE AS ENUM ('FORM', 'COOKIE', 'RESET_PWD', 'USER_CREATE');

create table login
(
    user_id    int4              not null,
    "result"   login_result_type not null,
    login_type login_type        not null,
    login_time timestamptz       null,
    remote_ip  varchar(40)       null,
    locale     varchar(25)       null
);
create index time_index on login(login_time);
alter table login
    add constraint login_user_id_fkey
        foreign key (user_id) references users (user_id) on delete cascade on update cascade;

-- -----------------------------------------------------------
-- USER_CONFIG
--  ----------------------------------------------------------
CREATE TYPE DISTANCE_UNIT_TYPE AS ENUM ('KM', 'MI');
CREATE TYPE MARKER_TYPE AS ENUM ('Z', 'F', 'C');

CREATE TABLE user_config
(
    user_id           INTEGER PRIMARY KEY NOT NULL,
    unit              DISTANCE_UNIT_TYPE,
    change_region_id  INTEGER,
    change_country_id INTEGER,
    data_region_id    INTEGER,
    data_country_id   INTEGER,
    map_latitude      DOUBLE PRECISION,
    map_longitude     DOUBLE PRECISION,
    map_zoom          INTEGER,
    modified_date     TIMESTAMPTZ         NOT NULL,
    version           INTEGER             NOT NULL,
    chart_region_id   INTEGER,
    chart_country_id  INTEGER,
    region_id         INTEGER,
    country_id        INTEGER,
    states            varchar(50) ARRAY,
    site_status       site_status_type ARRAY,
    change_type       change_type,
    stall_count       INTEGER,
    power_kwatt       INTEGER,
    marker_type       marker_type,
    marker_size       INTEGER,
    cluster_size      INTEGER,
    other_evs         BOOLEAN,
    CONSTRAINT user_config_users_user_id_fk FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT user_config_change_region_id_fk FOREIGN KEY (change_region_id) REFERENCES region (region_id),
    CONSTRAINT user_config_change_country_id_fk FOREIGN KEY (change_country_id) REFERENCES country (country_id),
    CONSTRAINT user_config_data_region_id_fk FOREIGN KEY (data_region_id) REFERENCES region (region_id),
    CONSTRAINT user_config_data_country_id_fk FOREIGN KEY (data_country_id) REFERENCES country (country_id),
    CONSTRAINT user_config_chart_region_id_fk FOREIGN KEY (chart_region_id) REFERENCES region (region_id),
    CONSTRAINT user_config_chart_country_id_fk FOREIGN KEY (chart_country_id) REFERENCES country (country_id),
    CONSTRAINT user_config_region_id_fk FOREIGN KEY (region_id) REFERENCES region (region_id),
    CONSTRAINT user_config_country_id_fk FOREIGN KEY (country_id) REFERENCES country (country_id)
);

-- -----------------------------------------------------------
-- USER_CONFIG_MARKERS
--  ----------------------------------------------------------
create table user_config_marker
(
    user_id      int4        not null,
    latitude     float8      null,
    longitude    float8      null,
    "name"       varchar(99) null,
    created_date timestamptz not null
);
alter table user_config_marker
    add constraint user_config_markers_users_user_id_fk foreign key (user_id) references supercharge.users (user_id) on delete cascade;

-- -----------------------------------------------------------
-- user_route
--  ----------------------------------------------------------
create table user_route
(
    route_id      serial primary key,
    user_id       int4 references users (user_id) on delete cascade on update cascade,
    route_name    varchar(100) not null,
    created_date  timestamptz  not null,
    modified_date timestamptz  not null,
    constraint user_route_unique unique (user_id, route_name)
);
alter sequence user_route_route_id_seq restart with 100;

-- -----------------------------------------------------------
-- user_route_waypoint
--  ----------------------------------------------------------
CREATE TABLE user_route_waypoint
(
    route_id      INT4             NOT NULL REFERENCES user_route (route_id) ON DELETE CASCADE ON UPDATE CASCADE,
    waypoint_name VARCHAR(100)     NULL,
    latitude      DOUBLE PRECISION NOT NULL,
    longitude     DOUBLE PRECISION NOT NULL,
    position      INT4             NOT NULL
);

-- -----------------------------------------------------------
-- FEATURE
-- -----------------------------------------------------------
create table feature
(
    feature_id    serial primary key,
    title         varchar(99) not null,
    added_date    timestamptz not null,
    modified_date timestamptz not null,
    description   text        not null
);
alter sequence feature_feature_id_seq restart with 100;

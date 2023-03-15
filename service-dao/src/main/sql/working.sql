SET search_path TO supercharge, public;

-- =============================================================
-- user
-- =============================================================

select count(*) from users;

select * 
from users u
order by created_date desc;

select * from users where username in ('keith', 'xiujia');

select * from users where username not like 'temporary__%' order by modified_date desc;
select count(*) from users where username like 'temporary__%';

select u.user_id, u.username, u.created_date, u.email, r.role_name
from users u 
join user_role ur on u.user_id=ur.user_id 
join roles r on r.role_id = ur.role_id
where ur.role_id is not NULL
  AND u.username = ''
order by username asc;

-- =============================================================
-- user_role
-- =============================================================

select * from user_role;

-- roles for a specific username
select u.user_id, u.username, string_agg(r.role_name, ',')
from users u
         left join user_role ur on ur.user_id = u.user_id
         join roles r on r.role_id = ur.role_id
where u.username = 'keith'
group by u.user_id, u.username;

select string_agg(r.role_name, ',')
from user_role ur
         join roles r on r.role_id = ur.role_id;


insert into user_role
values ((select user_id from users where username = ''),
        (select role_id from roles r where r.role_name = 'editor'),
        now());


-- =============================================================
-- user_config
-- =============================================================

select count(*) from user_config;

-- most recently created user config rows joined with user.
select u.username, uc.* 
from user_config uc
join users u on u.user_id = uc.user_id
order by u.created_date desc;

-- most recently modified user config rows joined with user.
select u.username, uc.* 
from user_config uc
join users u on u.user_id = uc.user_id
order by uc.modified_date desc;

-- count of each map_zoom value
select map_zoom, count(*), 100.0 * count(*) / (select count(*) from user_config) as "percent"
from user_config GROUP BY map_zoom order by map_zoom asc;

-- counts of each unit: MI, KM
select unit, count(*) from user_config group by unit order by count(*) desc;

-- unused user_config rows
select count(*) from user_config where version=1 and map_zoom is null;
select * from user_config where version=1 and map_zoom is null order by modified_date desc;

-- =============================================================
-- login
-- =============================================================

select count(*) from login;

select count(*) from login where login_time >= NOW() - '1 day'::INTERVAL;

select distinct login.login_type from login;

select distinct login.result from login;

-- count of logins per user.
select u.username,count(*) 
from login l
join users u on u.user_id = l.user_id
group by u.username
order by count(*) desc;

-- count of logins per user -- WHERE RESULT IS INVALID_CREDENTIALS
select u.username,count(*) 
from login l
join users u on u.user_id = l.user_id
where l.result = 'INVALID_CREDENTIALS'
group by u.username
order by count(*) desc;

-- recent logins joined with user
select u.username, l.*
from login l
join users u on u.user_id = l.user_id
order by login_time desc;


-- =============================================================
-- user_reset_password
-- =============================================================

select count(*) from user_reset_password;

select u.username,* 
from user_reset_password urp
join users u on u.user_id = urp.user_id
order by request_time desc;


-- =============================================================
-- user_config_marker
-- =============================================================

select count(*) from user_config_marker;

select * from user_config_marker
order by created_date desc;

-- Lists the markers of each user.
select u.username, 
       u.user_id,
       max(ucm.created_date) as updated,
       count(*) as marker_count,
       string_agg(name, ',') as markers
from user_config_marker ucm
join users u on u.user_id = ucm.user_id
GROUP BY u.user_id
order by count(*) desc;


-- =============================================================
-- user_route / user_route_waypoint
-- =============================================================

-- routes by username
select u.username, u.user_id, u.created_date,
       ur.*,
       (select count(*) from user_route_waypoint urw where urw.route_id=ur.route_id)
from user_route ur
join users u on u.user_id=ur.user_id
order by u.username asc;

select * from user_route_waypoint;
select count(*) from user_route_waypoint;


-- =============================================================
-- country
-- =============================================================

select count(*) from country c;

select * from country c;

select * from country c where c.modified_date > '2019-11-15';

-- =============================================================
-- address
-- =============================================================


-- select addresses (and associated sites) by id.
select s.name,s.modified_date,s.opened_date, a.* 
from address a 
join site s on s.address_id = a.address_id
where a.address_id in(1000960,1000953);

-- count the number of sites in a specific country opened after a certain date
SELECT count(*)
FROM site s
JOIN address a ON a.address_id = s.address_id
JOIN country c ON c.country_id = a.country_id
WHERE s.counted = TRUE
AND s.opened_date > '2015-12-31' :: TIMESTAMP
AND c.name = 'USA';
      

      

-- =============================================================
-- site_change
-- =============================================================

select count(*) from site_change;      
      
-- Latest changes, joined with site name, and username.
SELECT s.name,u.username, sc.*
FROM site_change sc 
join site s on s.site_id =sc.site_id
join users u on u.user_id = sc.user_id
ORDER BY change_date DESC;

-- changes by user
SELECT u.username, count(*)
FROM site_change sc 
join site s on s.site_id =sc.site_id
join users u on u.user_id = sc.user_id
group BY u.username
order by count(*) desc;

-- Sites with the most changes.
select s.site_id, s.name, count(*) 
from site_change sc 
join site s on s.site_id = sc.site_id
group by s.site_id 
order by count(*) desc;

-- =============================================================
-- changelog
-- =============================================================

select count(*) from changelog;

select * 
from changelog 
order by modified_date desc;

select * from changelog where id=3350;
select * from changelog where site_id=1882;

update changelog set change_type='ADD' where id=3350;

-- -----------------------------------------------------------
-- USER_CONFIG
--  ----------------------------------------------------------
CREATE TYPE DISTANCE_UNIT_TYPE AS ENUM ('KM', 'MI');
CREATE TYPE MARKER_TYPE AS ENUM ('Z', 'F', 'C');

CREATE TABLE user_config
(
    user_id       INTEGER PRIMARY KEY NOT NULL,
    unit          DISTANCE_UNIT_TYPE,
    map_latitude  DOUBLE PRECISION,
    map_longitude DOUBLE PRECISION,
    map_zoom      INTEGER,
    modified_date TIMESTAMPTZ         NOT NULL,
    version       INTEGER             NOT NULL,
    change_type   change_type,
    marker_type   marker_type,
    marker_size   INTEGER,
    cluster_size  INTEGER,
    CONSTRAINT user_config_users_user_id_fk FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- -----------------------------------------------------------
-- USER_CONFIG_FILTERS
--  ----------------------------------------------------------
CREATE TYPE PAGE_TYPE AS ENUM ('DEFAULT', 'MAP', 'CHANGES', 'DATA', 'CHARTS');

CREATE TABLE user_config_filter
(
    user_id     INTEGER PRIMARY KEY NOT NULL,
    page        PAGE_TYPE PRIMARY KEY NOT NULL,
    region_id   INTEGER,
    country_id  INTEGER,
    states      varchar(50) ARRAY,
    site_status site_status_type ARRAY,
    stall_count INTEGER,
    power_kwatt INTEGER,
    CONSTRAINT user_config_region_id_fk FOREIGN KEY (region_id) REFERENCES region (region_id),
    CONSTRAINT user_config_country_id_fk FOREIGN KEY (country_id) REFERENCES country (country_id)
);

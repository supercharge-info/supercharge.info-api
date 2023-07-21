-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
set search_path to supercharge;

ALTER TYPE LOGIN_RESULT_TYPE ADD VALUE 'CHANGED';

-- Add notify and user id to changelogs
alter table changelog add column notify boolean not null default true,
                      add column user_id int NULL, 
                      add constraint fk_changelog_2 foreign key (user_id)
                                                    references users (user_id)
                                     on update cascade on delete cascade;

-- Recreated deleted changelogs with notify set to false
-- for sites only ever created
insert into changelog (
            site_id,
            change_date,
            change_type,
            site_status,
            modified_date,
            notify,
            user_id)
     select s.site_id,
           case when date_part('day', opened_date) < date_part('day', change_date)
                then opened_date
                else change_date
           end,
           'ADD',
           status,
           now(),
           false,
           sc.user_id
      from site s
inner join site_change sc on s.site_id = sc.site_id and sc.version = 1
     where not exists (select 'Y' from changelog c where c.site_id = s.site_id)
       and not exists (select 'Y' from site_change i where s.site_id = i.site_id and i.field_name = 'status');

-- Backfill user ids
update changelog cl
   set user_id = coalesce((select sc.user_id
                             from site_change sc
                            where cl.site_id = sc.site_id
                              and (field_name = 'status' and new_value = cast(site_status as varchar)
                                   or version = 1)
                              and sc.change_date - modified_date between interval'0' and interval'3 seconds')
                          , cl.user_id);

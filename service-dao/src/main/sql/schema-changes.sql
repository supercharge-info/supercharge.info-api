-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
set search_path to supercharge;

ALTER TYPE LOGIN_RESULT_TYPE ADD VALUE 'CHANGED';

alter table changelog add column user_id int NULL; 
alter table changelog add constraint fk_changelog_2
	foreign key (user_id) references users (user_id)
    on update cascade
    on delete cascade;

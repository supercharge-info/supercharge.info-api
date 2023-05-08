-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
SET search_path TO supercharge;

ALTER TABLE user_config
  ADD COLUMN other_evs boolean;

ALTER TABLE site
  ADD COLUMN other_evs bool not null default false;

-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
SET search_path TO supercharge;

ALTER TABLE site
  ADD COLUMN magic_dock bool not null default false;

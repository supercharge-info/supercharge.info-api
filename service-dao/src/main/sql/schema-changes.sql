-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
set search_path to supercharge;

ALTER TYPE LOGIN_RESULT_TYPE ADD VALUE 'CHANGED';

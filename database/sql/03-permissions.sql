-- =================================================================================================================
--
-- PERMISSIONS
--
-- =================================================================================================================

grant usage on schema supercharge to supercharge_user;
alter default privileges in schema supercharge grant all privileges on tables to supercharge_user;
alter default privileges in schema supercharge grant usage on sequences to supercharge_user;
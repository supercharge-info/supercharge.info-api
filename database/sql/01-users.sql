-- =================================================================================================================
--
-- USERS
--
-- =================================================================================================================
--
-- NOTE: The docker image we use has POSTGRES_HOST_AUTH_METHOD set to "trust" which means passwords are not required
-- for local development.

-- -----------------------------------------------------------
-- supercharge_user
-- -----------------------------------------------------------
create user supercharge_user with login password 'supercharge_user';


-- These roles are not used for local development, but create them in the local DB so that
-- production database can be copied locally, see database/copy-prod-db-to-local.sh.
create user root with login password 'root';
create user tomcat with login password 'tomcat';
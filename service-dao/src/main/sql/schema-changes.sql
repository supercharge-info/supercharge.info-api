-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================
CREATE INDEX changelog_site_id_change_date ON changelog (site_id, change_date);

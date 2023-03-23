-- ============================================================================
-- File for SQL that will change the schema.  Clear this file after prod deploy.
-- ============================================================================

-- Add marker type enum
CREATE TYPE MARKER_TYPE AS ENUM ('Z', 'F', 'C');

-- Add columns to user config
ALTER TABLE user_config
  ADD COLUMN region_id INTEGER,
  ADD COLUMN country_id INTEGER,
  ADD COLUMN states varchar(50) ARRAY,
  ADD COLUMN site_status site_status_type ARRAY,
  ADD COLUMN change_type change_type,
  ADD COLUMN stall_count INTEGER,
  ADD COLUMN power_kwatt INTEGER,
  ADD COLUMN marker_type marker_type,
  ADD COLUMN marker_size INTEGER,
  ADD COLUMN cluster_size INTEGER,
  ADD CONSTRAINT user_config_region_id_fk FOREIGN KEY (region_id) REFERENCES region (region_id),
  ADD CONSTRAINT user_config_country_id_fk FOREIGN KEY (country_id) REFERENCES country (country_id);

-- Set defaults from changes page:
UPDATE user_config SET region_id = change_region_id, country_id = change_country_id;

-- Change feature added date to have timestamp to prevent timezone issues:
ALTER TABLE feature ALTER COLUMN added_date TYPE TIMESTAMP WITH TIME ZONE USING added_date + INTERVAL'12 hours';

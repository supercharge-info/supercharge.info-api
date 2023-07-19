package com.redshiftsoft.tesla.dao.validation;

import com.google.common.collect.Lists;

import java.util.Collection;

import static com.redshiftsoft.tesla.dao.validation.ValidationCategory.*;

public class Validations {
    public static Collection<Validation> getValidations() {

        Collection<Validation> validationMap = Lists.newArrayList();

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | SUPERCHARGER

        validationMap.add(
                new Validation(SUPERCHARGER, "open date consistent with status", "" +
                        "SELECT * " +
                        "FROM site " +
                        "WHERE (status = 'OPEN' AND opened_date IS NULL) OR (status != 'OPEN' AND opened_date IS NOT NULL)")
        );

        validationMap.add(
                new Validation(SUPERCHARGER, "Tesla location id is not null for OPEN site", "" +
                        "SELECT * " +
                        "FROM site " +
                        "WHERE status = 'OPEN' AND location_id IS NULL")
        );

        validationMap.add(
                new Validation(SUPERCHARGER, "no duplicate Tesla location ids", "" +
                        "SELECT location_id, array_agg(site_id) site_ids, count(*) FROM site " +
                        "WHERE location_id is not null GROUP BY location_id HAVING count(*) > 1")
        );

        validationMap.add(
                new Validation(SUPERCHARGER, "stall count non zero for OPEN sites", "" +
                        "SELECT * " +
                        "FROM site " +
                        "WHERE status = 'OPEN' AND (stall_count IS NULL OR stall_count = 0)")
        );

        validationMap.add(
                new Validation(SUPERCHARGER, "no duplicate supercharger names", "" +
                        "SELECT name, count(*) " +
                        "FROM site " +
                        "GROUP BY name HAVING count(*) > 1")
        );

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | ADDRESS

        validationMap.add(
                new Validation(ADDRESS, "state not missing in countries that require it",
                        "" +
                                "SELECT * " +
                                "FROM address a " +
                                "JOIN country c USING (country_id) " +
                                "WHERE c.state_required AND (state IS NULL OR state = '')")
        );

        validationMap.add(
                new Validation(ADDRESS, "no duplicate street address",
                        "SELECT street, array_agg(site_id) site_ids, count(*) " +
                        "FROM site JOIN address USING (address_id) " +
                        "WHERE status != 'CLOSED_PERM' " +
                        "GROUP BY street HAVING count(*) > 1")
        );

        validationMap.add(
                new Validation(ADDRESS, "no unused addresses",
                        "SELECT * FROM address WHERE address_id NOT IN (SELECT address_id FROM site)")
        );

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | CHANGELOG

        validationMap.add(
                new Validation(CHANGE_LOG, "every non-open site has open status entry in changelog", "" +
                        "SELECT s.* " +
                        "FROM site s " +
                        "LEFT JOIN changelog c on (s.site_id = c.site_id AND s.status = c.site_status) " +
                        "WHERE c.site_id is null and s.status != 'OPEN'")
        );

        validationMap.add(
                new Validation(CHANGE_LOG, "sequential changelogs do not repeat site status", "" +
                        "SELECT site_id, name, site_status, array_agg(id ORDER BY id) change_ids, " +
                               "array_agg(to_char(change_date, 'YYYY-MM-DD') ORDER BY id) change_dates " +
                        "FROM ( " +
                          "SELECT id, site_id, change_date, site_status, count(is_reset) OVER (ORDER BY site_id, change_date) AS grp " +
                          "FROM (SELECT id, site_id, change_date, site_status, " +
                                  "CASE WHEN lag(site_status) OVER (ORDER BY site_id, change_date) <> site_status " +
                                         "OR lag(site_id) OVER (ORDER BY site_id, change_date) <> site_id " +
                                       "THEN 1 END AS is_reset " +
                                "FROM changelog) AS t " +
                        ") AS g inner join site using (site_id) " +
                        "GROUP BY name, site_id, grp, site_status " +
                        "HAVING COUNT(*) > 1 " +
                        "ORDER BY min(site_id)")
        );

        validationMap.add(
                new Validation(CHANGE_LOG, "site status does not progress backwards", "" +
                        "SELECT site_id, site.name, to_char(opened_date, 'YYYY-MM-DD') opened_date, " +
                               "site_status, to_char(change_date, 'YYYY-MM-DD') change_date " +
                        "FROM changelog o " +
                        "INNER JOIN site using (site_id) " +
                        "WHERE site_status in ('PERMIT', 'CONSTRUCTION') " +
                        "AND exists (SELECT 'Y' " +
                                    "FROM changelog i " +
                                    "WHERE i.site_id = o.site_id " +
                                    "AND i.change_date < o.change_date " +
                                    "AND i.site_status != o.site_status " +
                                    "AND i.site_status != 'PERMIT') " +
                        "OR site_status = 'CLOSED_PERM'" +
                        "AND exists (SELECT 'Y' " +
                                    "FROM changelog i " +
                                    "WHERE i.site_id = o.site_id " +
                                    "AND i.change_date > o.change_date) " +
                        "ORDER BY site_id")
        );

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | USER_CONFIG

        validationMap.add(
                new Validation(USER_CONFIG, "every user has a user config", "" +
                        "SELECT user_id, username, email, enabled, created_date, modified_date " +
                        "FROM users o " +
                        "WHERE not exists (SELECT 'Y' " +
                                          "FROM user_config i " +
                                          "WHERE i.user_id = o.user_id)"
                )
        );

        validationMap.add(
                new Validation(USER_CONFIG, "every user config has valid lat/lng", "" +
                        "select * from user_config " +
                        "where abs(map_longitude) > 180 or " +
                        "      abs(map_latitude) > 90"
                )
        );

        validationMap.add(
                new Validation(USER_CONFIG, "every custom marker has valid lat/lng", "" +
                        "select * from user_config_marker " +
                        "where abs(longitude) > 180 or " +
                        "      abs(latitude) > 90"
                )
        );


        return validationMap;

    }
}

package com.redshiftsoft.tesla.dao.site;


import com.google.common.collect.Maps;
import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Component
public class SiteDAO extends BaseDAO {

    private static final SiteRowMapper SITE_ROW_MAPPER = new SiteRowMapper();

    @Resource
    private AddressDAO addressDAO;

    /**
     * Get by Id.  Throws for non existing siteIds.
     */
    public Site getById(int siteId) {
        String sql = SiteRowMapper.SELECT_ALL + " WHERE site_id=?";
        return getJdbcTemplate().queryForObject(sql, SITE_ROW_MAPPER, siteId);
    }

    public List<Site> getAllSites() {
        return getJdbcTemplate().query(SiteRowMapper.SELECT_ALL, SITE_ROW_MAPPER);
    }

    /**
     * Returns a map from siteId to Site.
     */
    public Map<Integer, Site> getAllSiteMap() {
        List<Site> allSites = getAllSites();
        Map<Integer, Site> siteMap = Maps.newHashMapWithExpectedSize(allSites.size());
        for (Site site : allSites) {
            siteMap.put(site.getId(), site);
        }
        return siteMap;
    }

    public List<Site> getEnabledSites() {
        return getJdbcTemplate().query(SiteRowMapper.SELECT_ENABLED, SITE_ROW_MAPPER);
    }

    public void insert(Site site) {
        addressDAO.insert(site.getAddress());
        site.setVersion(1);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getJdbcTemplate().update(new SiteInsertStatementCreator(site), keyHolder);
        site.setId((Integer) keyHolder.getKeys().get("site_id"));
    }

    public void update(Site site) {
        getJdbcTemplate().update(new SiteUpdateStatementCreator(site));
        addressDAO.update(site.getAddress());
    }

    public SiteStatus getSiteStatus(int siteId) {
        String SQL = "SELECT status FROM site WHERE site_id=?";
        String statusString = getJdbcTemplate().queryForObject(SQL, String.class, siteId);
        return SiteStatus.valueOf(statusString);
    }

    public boolean exists(int siteId) {
        return getCount("select count(*) from site where site_id=?", siteId) > 0;
    }

    public void delete(int siteId) {
        Site site = getById(siteId);
        addressDAO.delete(site.getAddress().getId());
        getJdbcTemplate().update("DELETE FROM site WHERE site_id=?", siteId);
    }
}

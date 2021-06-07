package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.site.Country;
import com.redshiftsoft.tesla.dao.site.CountryDAO;
import com.redshiftsoft.tesla.dao.site.Region;
import com.redshiftsoft.tesla.dao.site.RegionDAO;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.List;

@Component
public class UserConfigDAO extends BaseDAO {

    @Resource
    private CountryDAO countryDAO;

    @Resource
    private RegionDAO regionDAO;

    @Resource
    private UserConfigMarkerDAO userConfigMarkerDAO;

    /**
     * Insert.
     */
    public void insert(Integer userId, UserConfig config) {
        String INSERT = "INSERT INTO user_config VALUES(?,?::distance_unit_type,?,?,?,?,?,?,?,NOW(),1,?,?)";
        getJdbcTemplate().update(INSERT,
                userId,
                config.getUnit().map(Enum::toString).orElse(null),
                config.getChangesPageRegion().map(Region::getId).orElse(null),
                config.getChangesPageCountry().map(Country::getId).orElse(null),
                config.getDataPageRegion().map(Region::getId).orElse(null),
                config.getDataPageCountry().map(Country::getId).orElse(null),
                config.getLatitude().orElse(null),
                config.getLongitude().orElse(null),
                config.getZoom().orElse(null),
                config.getChartsPageRegion().map(Region::getId).orElse(null),
                config.getChartsPageCountry().map(Country::getId).orElse(null)
        );
        userConfigMarkerDAO.insert(userId, config.getCustomMarkers());
    }

    /**
     * Update.
     */
    public void update(Integer userId, UserConfig config) {
        String UPDATE = "UPDATE user_config " +
                "SET unit=?::distance_unit_type," +
                "change_region_id=?,change_country_id=?," +
                "data_region_id=?,data_country_id=?," +
                "chart_region_id=?,chart_country_id=?," +
                "map_latitude=?,map_longitude=?,map_zoom=?,modified_date=now(),version=version+1 " +
                "WHERE user_id=?";
        getJdbcTemplate().update(UPDATE,
                config.getUnit().map(Enum::toString).orElse(null),
                config.getChangesPageRegion().map(Region::getId).orElse(null),
                config.getChangesPageCountry().map(Country::getId).orElse(null),
                config.getDataPageRegion().map(Region::getId).orElse(null),
                config.getDataPageCountry().map(Country::getId).orElse(null),
                config.getChartsPageRegion().map(Region::getId).orElse(null),
                config.getChartsPageCountry().map(Country::getId).orElse(null),
                config.getLatitude().orElse(null),
                config.getLongitude().orElse(null),
                config.getZoom().orElse(null)
                , userId
        );
        userConfigMarkerDAO.delete(userId);
        userConfigMarkerDAO.insert(userId, config.getCustomMarkers());
    }

    /**
     * Get
     */
    public UserConfig getById(final Integer userId) {
        String SELECT_SQL = "SELECT * FROM user_config WHERE user_id=?";
        return getJdbcTemplate().queryForObject(SELECT_SQL, USER_CONFIG_ROW_MAPPER, userId);
    }

    private final RowMapper<UserConfig> USER_CONFIG_ROW_MAPPER = (rs, rowNum) -> {
        int userId = rs.getInt(1);

        String unitString = rs.getString(2);
        Unit unit = (unitString == null) ? null : Unit.valueOf(unitString);

        //
        // changes region/country
        //
        Integer changesRegionId = (Integer) rs.getObject(3);
        Integer changesCountryId = (Integer) rs.getObject(4);
        Region changesRegion = changesRegionId == null ? null : regionDAO.getById(changesRegionId);
        Country changesCountry = changesCountryId == null ? null : countryDAO.getById(changesCountryId);

        //
        // data region/country
        //
        Integer dataRegionId = (Integer) rs.getObject(5);
        Integer dataCountryId = (Integer) rs.getObject(6);
        Region dataRegion = dataRegionId == null ? null : regionDAO.getById(dataRegionId);
        Country dataCountry = dataCountryId == null ? null : countryDAO.getById(dataCountryId);

        Double latitude = (Double) rs.getObject(7);
        Double longitude = (Double) rs.getObject(8);
        Integer zoom = (Integer) rs.getObject(9);

        Instant lastModified = Instant.ofEpochMilli(rs.getTimestamp(10).getTime());
        int version = rs.getInt(11);

        //
        // charts region/country
        //
        Integer chartsRegionId = (Integer) rs.getObject("chart_region_id");
        Integer chartsCountryId = (Integer) rs.getObject("chart_country_id");
        Region chartsRegion = chartsRegionId == null ? null : regionDAO.getById(chartsRegionId);
        Country chartsCountry = chartsCountryId == null ? null : countryDAO.getById(chartsCountryId);

        List<UserConfigMarker> customMarkers = userConfigMarkerDAO.getById(userId);

        return new UserConfig(
                unit,
                changesRegion,
                changesCountry,
                dataRegion,
                dataCountry,
                chartsRegion,
                chartsCountry,
                latitude,
                longitude, zoom, customMarkers, lastModified, version);
    };
}

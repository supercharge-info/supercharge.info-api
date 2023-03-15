package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.BaseDAO;
import com.redshiftsoft.tesla.dao.changelog.ChangeType;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.Resource;

import static com.redshiftsoft.util.StringTools.isEmpty;

@Component
public class UserConfigDAO extends BaseDAO {

    @Resource
    private UserConfigMarkerDAO userConfigMarkerDAO;

    /**
     * Insert.
     */
    public void insert(Integer userId, UserConfig config) {
        getJdbcTemplate().update(new InsertUserConfigPreparedStatementCreator(userId, config));
        userConfigMarkerDAO.insert(userId, config.getCustomMarkers());
    }

    /**
     * Update.
     */
    public void update(Integer userId, UserConfig config) {
        getJdbcTemplate().update(new UpdateUserConfigPreparedStatementCreator(userId, config));
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
        int userId = rs.getInt("user_id");

        String unitString = rs.getString("unit");
        Unit unit = (unitString == null) ? null : Unit.valueOf(unitString);

        //
        // default region/country
        //
        Integer regionId = (Integer) rs.getObject("region_id");
        Integer countryId = (Integer) rs.getObject("country_id");
        List<String> states = Arrays.asList((String[]) rs.getArray("states").getArray());

        //
        // changes region/country
        //
        Integer changesRegionId = (Integer) rs.getObject("change_region_id");
        Integer changesCountryId = (Integer) rs.getObject("change_country_id");

        //
        // data region/country
        //
        Integer dataRegionId = (Integer) rs.getObject("data_region_id");
        Integer dataCountryId = (Integer) rs.getObject("data_country_id");

        //
        // charts region/country
        //
        Integer chartsRegionId = (Integer) rs.getObject("chart_region_id");
        Integer chartsCountryId = (Integer) rs.getObject("chart_country_id");

        List<SiteStatus> siteStatus = Arrays.stream((String[]) rs.getArray("site_status").getArray()).map(SiteStatus::valueOf).collect(Collectors.toList());
        String changeString = rs.getString("change_type");
        ChangeType changeType = isEmpty(changeString) ? null : ChangeType.valueOf(changeString);
        Integer stallCount = (Integer) rs.getObject("stall_count");
        Integer powerKilowatt = (Integer) rs.getObject("power_kwatt");

        Double latitude = (Double) rs.getObject("map_latitude");
        Double longitude = (Double) rs.getObject("map_longitude");
        Integer zoom = (Integer) rs.getObject("map_zoom");

        String markerString = rs.getString("marker_type");
        MarkerType markerType = isEmpty(markerString) ? null : MarkerType.valueOf(markerString);
        Integer markerSize = (Integer) rs.getObject("marker_size");
        Integer clusterSize = (Integer) rs.getObject("cluster_size");

        Instant lastModified = Instant.ofEpochMilli(rs.getTimestamp("modified_date").getTime());
        int version = rs.getInt("version");

        List<UserConfigMarker> customMarkers = userConfigMarkerDAO.getById(userId);

        return new UserConfig(
                unit,
                regionId, countryId, states,
                changesRegionId, changesCountryId,
                dataRegionId, dataCountryId,
                chartsRegionId, chartsCountryId,
                siteStatus, changeType,
                stallCount, powerKilowatt,
                latitude, longitude, zoom,
                markerType, markerSize, clusterSize,
                customMarkers, lastModified, version);
    };

}

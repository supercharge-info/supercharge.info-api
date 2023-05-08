package com.redshiftsoft.tesla.dao.user;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUserConfigs;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserConfigDAO_UT {

    @Resource
    private UserConfigDAO userConfigDAO;

    @Resource
    private UserDAO userDAO;

    @Resource
    private TestUserConfigs testUserConfigs;

    @Test
    public void insertAndGetById() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        UserConfig userConfigIn = testUserConfigs.create();

        // when
        userConfigDAO.insert(user.getId(), userConfigIn);

        // then
        UserConfig configOut = userConfigDAO.getById(user.getId());
        assertUserConfigsEqual(userConfigIn, configOut);
        assertEquals(1, configOut.getVersion());
        assertTrue(Math.abs(System.currentTimeMillis() - configOut.getLastModified().toEpochMilli()) < 30_000);
    }

    @Test
    public void insertWithMostFieldsNull() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        UserConfig userConfigIn = UserConfig.create(Unit.MI);

        // when
        userConfigDAO.insert(user.getId(), userConfigIn);

        // then
        UserConfig configOut = userConfigDAO.getById(user.getId());
        assertUserConfigsEqual(userConfigIn, configOut);
        assertEquals(1, configOut.getVersion());
        assertTrue(Math.abs(System.currentTimeMillis() - configOut.getLastModified().toEpochMilli()) < 30_000);
    }

    @Test
    public void update() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        UserConfig userConfig1In = testUserConfigs.create();
        UserConfig userConfig2In = testUserConfigs.create();

        // when
        userConfigDAO.insert(user.getId(), userConfig1In);
        userConfigDAO.update(user.getId(), userConfig2In);

        // then
        UserConfig configOut = userConfigDAO.getById(user.getId());
        assertUserConfigsEqual(userConfig2In, configOut);
        assertEquals(2, configOut.getVersion());
    }

    @Test
    public void updateWithMostFieldsNull() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        UserConfig userConfig1In = testUserConfigs.create();
        UserConfig userConfig2In = UserConfig.create(Unit.KM);

        // when
        userConfigDAO.insert(user.getId(), userConfig1In);
        userConfigDAO.update(user.getId(), userConfig2In);

        // then
        UserConfig configOut = userConfigDAO.getById(user.getId());
        assertUserConfigsEqual(userConfig2In, configOut);
        assertEquals(2, configOut.getVersion());
    }

    private static void assertUserConfigsEqual(UserConfig expectedUserConfig, UserConfig actualUserConfig) {
        assertEquals(expectedUserConfig.getUnit(), actualUserConfig.getUnit());

        assertEquals(expectedUserConfig.getCountryId(), actualUserConfig.getCountryId());
        assertEquals(expectedUserConfig.getRegionId(), actualUserConfig.getRegionId());
        assertEquals(expectedUserConfig.getStates(), actualUserConfig.getStates());

        assertEquals(expectedUserConfig.getChangesPageCountryId(), actualUserConfig.getChangesPageCountryId());
        assertEquals(expectedUserConfig.getChangesPageRegionId(), actualUserConfig.getChangesPageRegionId());

        assertEquals(expectedUserConfig.getDataPageCountryId(), actualUserConfig.getDataPageCountryId());
        assertEquals(expectedUserConfig.getDataPageRegionId(), actualUserConfig.getDataPageRegionId());

        assertEquals(expectedUserConfig.getChartsPageCountryId(), actualUserConfig.getChartsPageCountryId());
        assertEquals(expectedUserConfig.getChartsPageRegionId(), actualUserConfig.getChartsPageRegionId());

        assertEquals(expectedUserConfig.getSiteStatus(), actualUserConfig.getSiteStatus());
        assertEquals(expectedUserConfig.getChangeType(), actualUserConfig.getChangeType());
        assertEquals(expectedUserConfig.getPowerKilowatt(), actualUserConfig.getPowerKilowatt());
        assertEquals(expectedUserConfig.isOtherEVs(), actualUserConfig.isOtherEVs());

        assertEquals(expectedUserConfig.getMarkerType(), actualUserConfig.getMarkerType());
        assertEquals(expectedUserConfig.getMarkerSize(), actualUserConfig.getMarkerSize());
        assertEquals(expectedUserConfig.getClusterSize(), actualUserConfig.getClusterSize());

        assertEquals(expectedUserConfig.getLatitude(), actualUserConfig.getLatitude());
        assertEquals(expectedUserConfig.getLongitude(), actualUserConfig.getLongitude());
        assertEquals(expectedUserConfig.getCustomMarkers(), actualUserConfig.getCustomMarkers());
    }


}

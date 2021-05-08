package com.redshiftsoft.tesla.dao.user;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestUserConfigs;
import com.redshiftsoft.tesla.dao.TestUsers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.assertEquals;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class UserConfigMarkerDAO_UT {

    @Resource
    private UserConfigMarkerDAO userConfigMarkerDAO;

    @Resource
    private UserDAO userDAO;

    @Resource
    private TestUserConfigs testUserConfigs;

    @Test
    public void insert_getById() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);

        List<UserConfigMarker> markersIn = Lists.newArrayList(
                new UserConfigMarker("name1", 45.0, -100),
                new UserConfigMarker("name2", 25.0, -110),
                new UserConfigMarker("name3", -25.0, 10)
        );

        // when
        userConfigMarkerDAO.insert(user.getId(), markersIn);
        List<UserConfigMarker> markersOut = userConfigMarkerDAO.getById(user.getId());

        // then
        assertEquals(markersIn.size(), markersOut.size());
        UserConfigMarker m1Out = markersOut.stream().filter(x -> x.getName().equals("name1")).findFirst().orElse(null);
        UserConfigMarker m2Out = markersOut.stream().filter(x -> x.getName().equals("name2")).findFirst().orElse(null);
        UserConfigMarker m3Out = markersOut.stream().filter(x -> x.getName().equals("name3")).findFirst().orElse(null);
        assertEquals("UserConfigMarker{name='name1', lat=45.0, lng=-100.0}", m1Out.toString());
        assertEquals("UserConfigMarker{name='name2', lat=25.0, lng=-110.0}", m2Out.toString());
        assertEquals("UserConfigMarker{name='name3', lat=-25.0, lng=10.0}", m3Out.toString());
    }

    @Test
    public void delete() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        List<UserConfigMarker> customMakers = testUserConfigs.createCustomMarkers(1, 10);
        userConfigMarkerDAO.insert(user.getId(), customMakers);
        assertEquals(customMakers.size(), userConfigMarkerDAO.getById(user.getId()).size());

        // when
        userConfigMarkerDAO.delete(user.getId());

        // then
        assertEquals(0, userConfigMarkerDAO.getById(user.getId()).size());

    }

}
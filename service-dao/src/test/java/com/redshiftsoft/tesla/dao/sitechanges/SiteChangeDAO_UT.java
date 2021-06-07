package com.redshiftsoft.tesla.dao.sitechanges;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@Rollback(value = true)
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class SiteChangeDAO_UT {

    @Resource
    private SiteChangeDAO siteChangesDAO;

    @Resource
    private UserDAO userDAO;

    @Resource
    private TestSiteSaver testSiteSaver;

    private Site siteIn;
    private User user;

    @BeforeEach
    public void before() {
        siteIn = testSiteSaver.persistRandomSite();
        user = TestUsers.createUser();
        userDAO.insert(user);
    }

    @Test
    public void insert() {
        int version = RandomUtils.fast().getInteger();
        Instant changeDate = Instant.now();
        SiteChange siteChange1 = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName1", "oldValue1", "newValue1", changeDate);
        SiteChange siteChange2 = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName2", "oldValue2", "newValue2", changeDate);
        SiteChange siteChange3 = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName3", "oldValue3", "newValue3", changeDate);

        List<SiteChange> list = Lists.newArrayList(siteChange1, siteChange2, siteChange3);

        // when
        siteChangesDAO.insert(list);

        List<SiteChange> listOut = siteChangesDAO.list(siteIn.getId());

        // then
        assertEquals(list.size(), listOut.size());
        listOut.forEach(siteChange -> {
            assertEquals(version, siteChange.getVersion());
            assertTrue(Math.abs(changeDate.toEpochMilli() - siteChange.getChangeDate().toEpochMilli()) < 100);
            assertEquals(siteIn.getId(), siteChange.getSiteId());
            assertEquals(user.getId().intValue(), siteChange.getUserId());
            assertEquals(user.getUsername(), siteChange.getUsername());
        });
    }

    @Test
    public void insert_unique() {
        assertThrows(DuplicateKeyException.class, () -> {
            Instant changeDate = Instant.now();
            SiteChange siteChange1 = new SiteChange(siteIn.getId(), user.getId(), 1, "fieldNameSAME", "oldValue1", "newValue1", changeDate);
            SiteChange siteChange2 = new SiteChange(siteIn.getId(), user.getId(), 1, "fieldNameSAME", "oldValue2", "newValue2", changeDate);


            List<SiteChange> list = Lists.newArrayList(siteChange1, siteChange2);

            // when
            siteChangesDAO.insert(list);
        });
    }

}

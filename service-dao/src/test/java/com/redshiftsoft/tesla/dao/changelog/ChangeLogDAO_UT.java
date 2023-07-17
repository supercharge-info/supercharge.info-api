package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.tesla.dao.site.Address;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteDAO;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class ChangeLogDAO_UT {

    @Resource
    private JdbcTemplate jdbcTemplate;
    @Resource
    private ChangeLogDAO changeLogDAO;
    @Resource
    private TestSiteSaver testSiteSaver;
    @Resource
    private SiteDAO siteDAO;
    @Resource
    private UserDAO userDAO;

    private Site testSite;

    @BeforeEach
    public void insertTestSite() {
        testSite = testSiteSaver.persistRandomSite();
    }

    @Test
    public void insert_getById() {

        // given
        ChangeLogEdit changeLogIn = RandomChangeLog.randomChangeLog(testSite.getId());
        changeLogDAO.insert(changeLogIn);

        // when
        ChangeLog changeLogOut = changeLogDAO.getById(changeLogIn.getId());

        // then
        assertEquals(changeLogIn.getSiteId(), changeLogOut.getSiteId());
        assertEquals(changeLogIn.getId(), changeLogOut.getId());
        assertEquals(changeLogIn.getDate(), changeLogOut.getDate());
        assertEquals(changeLogIn.getChangeType(), changeLogOut.getChangeType());
        assertEquals(changeLogIn.getSiteStatus(), changeLogOut.getSiteStatus());
        assertTrue(Math.abs(System.currentTimeMillis() - changeLogOut.getModifiedInstant().toEpochMilli()) < 5000);
        // then -- joined fields
        assertEquals(testSite.getName(), changeLogOut.getSiteName());
        Address addressIn = testSite.getAddress();
        assertEquals(addressIn.getRegionId(), changeLogOut.getRegionId());
        assertEquals(addressIn.getRegion(), changeLogOut.getRegionName());
        assertEquals(addressIn.getCountryId(), changeLogOut.getCountryId());
        assertEquals(addressIn.getCountry(), changeLogOut.getCountryName());
    }

    @Test
    public void insert_invalidChangeType() {
        assertThrows(DataIntegrityViolationException.class, () -> {
            jdbcTemplate.update("insert into changelog values(NULL, 100, NOW(), 'invalid', 'OPEN', NULL)");
        }, "invalid input value for enum change_type: \"invalid\"");
    }

    @Test
    public void insert_emptyChangeType() {
        assertThrows(DataIntegrityViolationException.class, () -> {
            jdbcTemplate.update("insert into changelog values(NULL, 100, NOW(), '', 'OPEN', NULL)");
        }, "invalid input value for enum change_type: \"\"");
    }

    @Test
    public void insert_delete() {
        ChangeLogEdit changeLogIn = RandomChangeLog.randomChangeLog(testSite.getId());
        changeLogDAO.insert(changeLogIn);
        int changeLogId = changeLogIn.getId();
        assertTrue(changeLogDAO.exists(changeLogId));
        int numOfRows = changeLogDAO.getList().size();

        changeLogDAO.delete(changeLogId);

        assertEquals(numOfRows - 1, changeLogDAO.getList().size());
        assertFalse(changeLogDAO.exists(changeLogId));
    }

    @Test
    public void update_invalidChangeType() {
        ChangeLogEdit changeLogIn = RandomChangeLog.randomChangeLog(testSite.getId());
        changeLogDAO.insert(changeLogIn);
        assertThrows(DataIntegrityViolationException.class, () -> {
            jdbcTemplate.update("update changelog set change_type='invalid' where id=?", changeLogIn.getId());
        }, "invalid input value for enum change_type: \"invalid\"");
    }

    @Test
    public void update_emptyChangeType() {
        ChangeLogEdit changeLogIn = RandomChangeLog.randomChangeLog(testSite.getId());
        changeLogDAO.insert(changeLogIn);
        assertThrows(DataIntegrityViolationException.class, () -> {
            jdbcTemplate.update("update changelog set change_type=''::CHANGE_TYPE where id=?", changeLogIn.getId());
        }, "invalid input value for enum change_type: \"\"");
    }

    @Test
    public void getList() {
        List<ChangeLog> all = changeLogDAO.getList();
        assertNotNull(all);
    }

    @Test
    public void getListWithLimit() {
        List<ChangeLog> changes = changeLogDAO.getList(10);
        assertTrue(changes.size() <= 10);
    }

    @Test
    public void getStatusDurations() {
        // given
        User user = TestUsers.createUser();
        userDAO.insert(user);
        ChangeLogEdit changeLog1 = ChangeLogEdit.toPersist(testSite.getId(), ChangeType.ADD, SiteStatus.PERMIT, Instant.now(), Instant.now(), true, user.getId());
        changeLogDAO.insert(changeLog1);
        ChangeLogEdit changeLog2 = ChangeLogEdit.toPersist(testSite.getId(), ChangeType.ADD, SiteStatus.CONSTRUCTION, Instant.now(), Instant.now(), false, user.getId());
        changeLogDAO.insert(changeLog2);
        testSite.setStatus(SiteStatus.CONSTRUCTION);
        siteDAO.update(testSite);

        // when
        Map<Integer, Integer> durations = changeLogDAO.getStatusDaysMap();

        // then
        assertTrue(durations.size() > 0);
    }

}

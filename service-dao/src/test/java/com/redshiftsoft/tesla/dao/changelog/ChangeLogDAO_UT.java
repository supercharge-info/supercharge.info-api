package com.redshiftsoft.tesla.dao.changelog;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.site.SiteStatus;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.Instant;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class ChangeLogDAO_UT {

    @Rule
    public ExpectedException expectedException = ExpectedException.none();
    @Resource
    private JdbcTemplate jdbcTemplate;
    @Resource
    private ChangeLogDAO changeLogDAO;
    @Resource
    private TestSiteSaver testSiteSaver;


    @Test
    public void insert_getById() {

        // given
        ChangeLog changeLogIn = RandomChangeLog.randomChangeLog();
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
        assertEquals("Buellton, CA", changeLogOut.getSiteName());
        assertEquals(100, changeLogOut.getRegionId());
        assertEquals("North America", changeLogOut.getRegionName());
        assertEquals(100, changeLogOut.getCountryId());
        assertEquals("USA", changeLogOut.getCountryName());
    }

    @Test
    public void insert_invalidChangeType() {
        expectedException.expect(DataIntegrityViolationException.class);
        expectedException.expectMessage("invalid input value for enum change_type: \"invalid\"");
        jdbcTemplate.update("insert into changelog values(NULL, 100, NOW(), 'invalid', 'OPEN', NULL)");
    }

    @Test
    public void insert_emptyChangeType() {
        expectedException.expect(DataIntegrityViolationException.class);
        expectedException.expectMessage("invalid input value for enum change_type: \"\"");
        jdbcTemplate.update("insert into changelog values(NULL, 100, NOW(), '', 'OPEN', NULL)");
    }

    @Test
    public void insert_delete() {
        ChangeLog changeLogIn = RandomChangeLog.randomChangeLog();
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
        ChangeLog changeLogIn = RandomChangeLog.randomChangeLog();
        changeLogDAO.insert(changeLogIn);
        expectedException.expect(DataIntegrityViolationException.class);
        expectedException.expectMessage("invalid input value for enum change_type: \"invalid\"");
        jdbcTemplate.update("update changelog set change_type='invalid' where id=?", changeLogIn.getId());
    }

    @Test
    public void update_emptyChangeType() {
        ChangeLog changeLogIn = RandomChangeLog.randomChangeLog();
        changeLogDAO.insert(changeLogIn);
        expectedException.expect(DataIntegrityViolationException.class);
        expectedException.expectMessage("invalid input value for enum change_type: \"\"");
        jdbcTemplate.update("update changelog set change_type=''::CHANGE_TYPE where id=?", changeLogIn.getId());
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
        Site siteIn = testSiteSaver.persistRandomSite();
        changeLogDAO.insert(ChangeLog.toPersist(siteIn.getId(), ChangeType.ADD, SiteStatus.PERMIT, Instant.now(), Instant.now()));
        Map<Integer, Integer> durations = changeLogDAO.getStatusDaysMap();
        assertTrue(durations.size() > 0);
    }

}
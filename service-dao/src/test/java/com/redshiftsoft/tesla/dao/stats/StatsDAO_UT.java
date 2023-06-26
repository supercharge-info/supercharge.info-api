package com.redshiftsoft.tesla.dao.stats;

import com.redshiftsoft.tesla.dao.DAOConfiguration;
import com.redshiftsoft.tesla.dao.TestSiteSaver;
import com.redshiftsoft.tesla.dao.TestUsers;
import com.redshiftsoft.tesla.dao.site.Site;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChange;
import com.redshiftsoft.tesla.dao.sitechanges.SiteChangeDAO;
import com.redshiftsoft.tesla.dao.login.*;
import com.redshiftsoft.tesla.dao.user.RoleDao;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.Instant;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import static org.junit.jupiter.api.Assumptions.assumeFalse;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = DAOConfiguration.class)
public class StatsDAO_UT {

    @Resource
    private JdbcTemplate jdbcTemplate;

    @Resource
    private SiteChangeDAO siteChangeDAO;

    @Resource
    private StatsDAO statsDAO;

    @Resource
    private RoleDao roleDAO;

    @Resource
    private UserDAO userDAO;

    @Resource
    private LoginDAO loginDAO;

    @Resource
    private TestSiteSaver testSiteSaver;

    private Site siteIn;
    private Site siteIn2;
    private Site siteIn3;
    private User user;

    @BeforeEach
    public void before() {
        siteIn = testSiteSaver.persistRandomSite();
        siteIn2 = testSiteSaver.persistRandomSite();
        siteIn3 = testSiteSaver.persistRandomSite();
        user = TestUsers.createUser();
        user.setRoles(List.of());
        userDAO.insert(user);
    }

    @Test
    public void getYtdLogins() {
        // given
        LocalDate now = LocalDate.now();
        jdbcTemplate.update("update users set created_date = now() - interval'1 year'");

        LoginAttempt attemptIn = new LoginAttempt(user, LoginResult.SUCCESS, LoginType.FORM, RandomUtils.fast().getString(1, 20, 'a', 'z'), Locale.getDefault());
        loginDAO.insertAttempt(attemptIn);
        loginDAO.insertAttempt(attemptIn);

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdLogins(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        if (now.until(LocalDate.of(now.getYear(), 12, 31)).isZero() || LocalDate.of(now.getYear(), 1, 1).until(now).isZero()) {
            // If Dec 31: date registered, BOY, and 2 logins
            // If Jan 1: date registered, EOY, and 2 logins
            assertEquals(3, count);
        } else {
            // Date registered, EOY, BOY, and 2 logins
            assertEquals(4, count);
        }
        assertEquals(2, total);
    }

    @Test
    public void getYtdAdditions_withNoRoles() {
        assertThrows(EmptyResultDataAccessException.class, () -> {
            statsDAO.getYtdAdditions(user.getId());
        }, "Incorrect result size: expected 1, actual 0");
    }

    @Test
    public void getYtdAdditions() {
        // given
        LocalDate now = LocalDate.now();
        roleDAO.insert(user.getId(), List.of("editor", "feature"));
        jdbcTemplate.update("update user_role set created_date = now() - interval'1 year'");

        Instant changeDate = Instant.ofEpochSecond(now.minusYears(1).plusDays(1).toEpochDay() * 86400);
        SiteChange siteChange1 = new SiteChange(siteIn.getId(), user.getId(), 1, "fieldName1", "oldValue1", "newValue1", changeDate);
        // These should be ignored as we measure sites created, not edited
        SiteChange siteChange2 = new SiteChange(siteIn.getId(), user.getId(), 2, "fieldName2", "oldValue2", "newValue2", changeDate);
        SiteChange siteChange3 = new SiteChange(siteIn.getId(), user.getId(), 3, "fieldName3", "oldValue3", "newValue3", changeDate);

        List<SiteChange> list = List.of(siteChange1, siteChange2, siteChange3);

        siteChangeDAO.insert(list);

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        Period eoy = now.until(LocalDate.of(now.getYear(), 12, 31));
        if (eoy.minusDays(1).isZero()) {
            // If Dec 30: date became editor and addition
            assertEquals(2, count);
        } else {
            // If Jan 1: date became editor, addition, and EOY
            // If Dec 31: date became editor, addition, and today
            // Usually: Date became editor, addition, and EOY
            assertEquals(3, count);
        }
        assertEquals(1, total);
    }

    @Test
    public void getYtdEdits_withNoRoles() {
        assertThrows(EmptyResultDataAccessException.class, () -> {
            statsDAO.getYtdEdits(user.getId());
        }, "Incorrect result size: expected 1, actual 0");
    }

    @Test
    public void getYtdEdits_editorToday() {
        // given
        roleDAO.insert(user.getId(), List.of("editor", "feature"));

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        assertEquals(1, count);
        assertEquals(0, total);
    }

    @Test
    public void getYtdEdits_editorYesterday() {
        // given
        LocalDate now = LocalDate.now();
        roleDAO.insert(user.getId(), List.of("editor", "feature"));
        jdbcTemplate.update("update user_role set created_date = now() - interval'1 day'");

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        if (now.until(LocalDate.of(now.getYear(), 1, 1)).isZero()) {
            // Yesterday == EOY
            assertEquals(1, count);
        } else {
            assertEquals(2, count);
        }
        assertEquals(0, total);
    }

    @Test
    public void getYtdEdits_editorLastYear() {
        // given
        LocalDate now = LocalDate.now();
        roleDAO.insert(user.getId(), List.of("editor", "feature"));
        jdbcTemplate.update("update user_role set created_date = now() - interval'1 year'");

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        if (now.until(LocalDate.of(now.getYear(), 12, 31)).isZero()) {
            // If Dec 31: date became editor
            assertEquals(1, count);
        } else {
            // If Jan 1: date became editor and EOY
            // Usually: date became editor and EOY
            assertEquals(2, count);
        }
        assertEquals(0, total);
    }

    @Test
    public void getYtdEdits_oneEditFirstDay() {
        // given
        LocalDate now = LocalDate.now();
        roleDAO.insert(user.getId(), List.of("editor", "feature"));
        jdbcTemplate.update("update user_role set created_date = now() - interval'1 year'");

        int version = RandomUtils.fast().getInteger();
        Instant changeDate = Instant.ofEpochSecond(now.minusYears(1).toEpochDay() * 86400);
        SiteChange siteChange = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName1", "oldValue1", "newValue1", changeDate);

        siteChangeDAO.insert(siteChange);

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        if (now.until(LocalDate.of(now.getYear(), 12, 31)).isZero()) {
            // If Dec 31: first edit
            assertEquals(1, count);
        } else {
            // If Jan 1: first edit and EOY
            // Usually: first edit and EOY
            assertEquals(2, count);
        }
        assertEquals(1, total);
    }

    @Test
    public void getYtdEdits_threeEdits() {
        // given
        LocalDate now = LocalDate.now();
        roleDAO.insert(user.getId(), List.of("editor", "feature"));
        jdbcTemplate.update("update user_role set created_date = now() - interval'2 years'");

        // Create changes
        int version = RandomUtils.fast().getInteger();
        Instant changeDate = Instant.ofEpochSecond(now.minusYears(1).toEpochDay() * 86400);
        SiteChange siteChange1 = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName1", "oldValue1", "newValue1", changeDate);
        SiteChange siteChange2 = new SiteChange(siteIn2.getId(), user.getId(), version, "fieldName2", "oldValue2", "newValue2", changeDate.plusSeconds(86400));
        SiteChange siteChange3 = new SiteChange(siteIn3.getId(), user.getId(), version, "fieldName3", "oldValue3", "newValue3", changeDate.plusSeconds(86400 * 2));
        // These should be ignored as we measure sites edited, not total edits
        SiteChange siteChange4 = new SiteChange(siteIn.getId(), user.getId(), version, "fieldName4", "oldValue4", "newValue4", changeDate);
        SiteChange siteChange5 = new SiteChange(siteIn2.getId(), user.getId(), version, "fieldName5", "oldValue5", "newValue5", changeDate.plusSeconds(86400));
        SiteChange siteChange6 = new SiteChange(siteIn3.getId(), user.getId(), version, "fieldName6", "oldValue6", "newValue6", changeDate.plusSeconds(86400 * 2));

        List<SiteChange> list = List.of(siteChange1, siteChange2, siteChange3, siteChange4, siteChange5, siteChange6);

        siteChangeDAO.insert(list);

        // when
        Map<Integer, List<Long[]>> results = statsDAO.getYtdEdits(user.getId());
        int count = results.values().stream().mapToInt(List::size).sum();
        int total = results.values().stream().mapToInt(l -> l.get(l.size() - 1)[1].intValue()).sum();

        // then
        Period eoy = now.until(LocalDate.of(now.getYear(), 12, 31));
        if (eoy.isZero() || eoy.minusDays(2).isZero() || LocalDate.of(now.getYear(), 1, 1).until(now).isZero()) {
            // If Dec 29: date became editor, EOY, BOY, and 3 edits
            // If Dec 31: date became editor, BOY, 3 edits, and today
            // If Jan 1: date became editor, EOY, 3 edits, and EOY
            assertEquals(6, count);
        } else {
            // If Dec 30: date became editor, EOY, BOY, 3 edits, and today
            // Usually: date became editor, EOY, BOY, 3 edits, and EOY
            assertEquals(7, count);
        }
        assertEquals(3, total);
    }
}

package com.redshiftsoft.tesla.dao.sitechanges;


import com.redshiftsoft.tesla.dao.BaseDAO;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.List;

@Component
public class SiteChangeDAO extends BaseDAO {

    private static final SiteChangesRowMapper ROW_MAPPER = new SiteChangesRowMapper();

    private static final UserChangesRowMapper USER_ROW_MAPPER = new UserChangesRowMapper();

    public void insert(SiteChange change) {
        SiteChangesInsertStatementCreator psc = new SiteChangesInsertStatementCreator(change);
        getJdbcTemplate().update(psc);
    }

    public void insert(Collection<SiteChange> changes) {
        changes.forEach(this::insert);
    }

    public List<SiteChange> list(int siteId) {
        return getJdbcTemplate().query(SiteChangesRowMapper.SELECT_ALL, ROW_MAPPER, siteId);
    }

    public List<UserChange> listByUser(int userId) {
        return getJdbcTemplate().query(UserChangesRowMapper.SELECT_ALL, USER_ROW_MAPPER, userId);
    }

}

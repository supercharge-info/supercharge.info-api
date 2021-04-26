package com.redshiftsoft.tesla.web.filter;

import com.google.common.base.Preconditions;
import com.google.common.cache.CacheLoader;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.dao.user.UserDAO;
import com.redshiftsoft.tesla.web.mvc.userlogin.LoginCookie;

class UserFilterCacheLoader extends CacheLoader<String, User> {

    private final UserDAO userDAO;

    public UserFilterCacheLoader(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    /**
     * Per the javadoc of superclass the contract of this method is that it should never return null.
     */
    @Override
    public User load(String cookieValue) {
        int userId = LoginCookie.getUserId(cookieValue);

        // This will throw if the user does not exist.
        User user = userDAO.getById(userId);

        String expectedHash = LoginCookie.generateCode(user);
        String cookieHash = LoginCookie.getHash(cookieValue);

        Preconditions.checkState(expectedHash.equals(cookieHash), "invalid cookie hash");

        return user;
    }
}

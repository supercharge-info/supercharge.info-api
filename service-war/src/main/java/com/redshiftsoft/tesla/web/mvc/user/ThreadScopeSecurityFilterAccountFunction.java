package com.redshiftsoft.tesla.web.mvc.user;

import com.redshiftsoft.tesla.web.ThreadScope;
import kdw.common.jee.web.filter.security.model.SecurityFilterAccount;

import javax.servlet.http.HttpServletRequest;
import java.util.function.Function;

public class ThreadScopeSecurityFilterAccountFunction implements Function<HttpServletRequest, SecurityFilterAccount> {

    @Override
    public SecurityFilterAccount apply(HttpServletRequest request) {
        return ThreadScope.getUser();
    }
}

package com.redshiftsoft.tesla.web;

import com.redshiftsoft.tesla.dao.user.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

public class ThreadScope {

    private static final ThreadLocal<User> userThreadLocal = new ThreadLocal<>();

	public static void setUser(User user) {
		userThreadLocal.set(user);
	}

	public static User getUser() {
		return userThreadLocal.get();
	}

	public static void clearUser() {
		userThreadLocal.set(null);
	}

	public static HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}
}
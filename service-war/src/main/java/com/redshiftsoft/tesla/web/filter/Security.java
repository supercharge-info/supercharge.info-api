package com.redshiftsoft.tesla.web.filter;

import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.util.Conditions;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class Security {

    public static void clearAuth() {
        context().setAuthentication(null);
    }

    public static Optional<Authentication> authentication() {
        return Optional.ofNullable(context().getAuthentication());
    }

    /* Use in a context where the user may or may not be preset. */
    public static Optional<User> userOption() {
        if (isAnonymousAuth()) {
            return Optional.empty();
        }
        return authentication().map(a -> (User) a.getPrincipal());
    }

    /* Should only be called in context where we know a user is present. */
    public static User user() {
        Optional<Authentication> auth = authentication();
        Conditions.checkArgument(auth.isPresent(), "No user in current context.");
        return (User) auth.get().getPrincipal();
    }

    public static void setAuth(Authentication authentication) {
        context().setAuthentication(authentication);
    }

    public static void setAuth(User user) {
        setAuth(createAuth(user));
    }

    public static void setAnonymousAuth() {
        setAuth(ANON_AUTH);
    }

    public static boolean isAnonymousAuth() {
        return context().getAuthentication() == ANON_AUTH;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    private static final AnonymousAuthenticationToken ANON_AUTH =
            new AnonymousAuthenticationToken("anonymous", "anonymous",
                    Collections.singletonList(new SimpleGrantedAuthority("anonymous")));


    private static SecurityContext context() {
        return SecurityContextHolder.getContext();
    }

    private static Authentication createAuth(User user) {
        List<SimpleGrantedAuthority> authorities =
                user.getRoles().stream().distinct().map(SimpleGrantedAuthority::new).collect(Collectors.toList());
        return new PreAuthenticatedAuthenticationToken(
                user,
                "",
                authorities
        );
    }

}

package com.redshiftsoft.tesla.web.forum;

import org.junit.jupiter.api.Test;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

public class ForumClient_UT {

    private final ForumClient forumClient = new ForumClient();

    @Test
    public void logout() {
        // when
        int responseCode = forumClient.logout(101);

        // then
        assertEquals(200, responseCode);
    }

    @Test
    public void search() {
        // when
        Optional<ForumUser> userOption = forumClient.search(101);

        // then
        assertTrue(userOption.isPresent());
        assertEquals("keith", userOption.get().username);
    }

    @Test
    public void searchNotPresent() {
        // when
        Optional<ForumUser> userOption = forumClient.search(-234523452);

        // then
        assertFalse(userOption.isPresent());
    }


}
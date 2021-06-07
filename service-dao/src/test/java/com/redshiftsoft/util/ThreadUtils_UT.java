package com.redshiftsoft.util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ThreadUtils_UT {

    @Test
    public void join() {
        // given
        T t = new T();
        assertTrue(t.isAlive());

        // when
        long start = System.currentTimeMillis();
        ThreadUtils.join(t, 10);
        long elapsed = System.currentTimeMillis() - start;

        // then
        assertTrue(t.isAlive());
        assertTrue(elapsed >= 10);
    }


    private static class T extends Thread {

        public T() {
            this.start();
        }

        @Override
        public void run() {
            ThreadUtils.sleepMinutes(10);
        }
    }


}

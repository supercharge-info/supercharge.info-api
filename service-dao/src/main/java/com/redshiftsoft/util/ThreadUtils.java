package com.redshiftsoft.util;

import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

/**
 * Thread related functionality.
 */
public class ThreadUtils {

    /**
     * Sleep for the indicated number of milliseconds. This method catches InterruptedException and does not
     * re-throw it.
     *
     * @param delayMS The delay in milliseconds.
     */
    public static void sleep(final long delayMS) {
        try {
            Thread.sleep(delayMS);
        } catch (InterruptedException exception) {
            /* Not necessarily a problem if this sleep is interrupted. May be the intent of the caller. */
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME).fine(exception.toString());
        }
    }

    /**
     * Sleep for the indicated number of seconds. This method catches InterruptedException and does not
     * re-throw it.
     *
     * @param delay The delay in milliseconds.
     */
    public static void sleepSeconds(final long delay) {
        sleep(delay * 1000);
    }

    /**
     * Sleep for the indicated number of minutes. This method catches InterruptedException and does not
     * re-throw it.
     *
     * @param delay The delay in milliseconds.
     */
    public static void sleepMinutes(final long delay) {
        sleep(delay * 1000 * 60);
    }

    /**
     * Unchecked thread join.
     */
    public static void join(Thread thread) {
        try {
            thread.join();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Unchecked thread join.
     */
    public static void join(Thread thread, long millis) {
        try {
            thread.join(millis);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Unchecked thread join.
     */
    public static void join(Thread thread, long millis, int nanos) {
        try {
            thread.join(millis, nanos);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Returns a list of references to all "Threads" in the calling thread's thread group and children groups.
     *
     * @return A list containing <code>Thread</code> objects.
     */
    public static List<Thread> listThreads() {
        ThreadGroup group = Thread.currentThread().getThreadGroup();
        Thread[] array = new Thread[Thread.activeCount() * 2];
        group.enumerate(array, true);
        List<Thread> list = new LinkedList<>();
        for (Thread anArray : array) {
            if (anArray == null) {
                break;
            }
            list.add(anArray);
        }
        return list;
    }

}
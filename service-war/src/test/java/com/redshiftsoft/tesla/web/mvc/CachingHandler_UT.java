package com.redshiftsoft.tesla.web.mvc;

import com.google.common.collect.Lists;
import com.redshiftsoft.tesla.dao.dbinfo.DBInfoDAO;
import com.redshiftsoft.util.ThreadUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class CachingHandler_UT {

    private static final int THREAD_COUNT = 16;

    @Mock
    private DBInfoDAO dbInfoDAO;

    @Mock
    private Supplier<List<String>> supplier;

    private CachingHandler<String> cachingHandler;

    @Before
    public void setup() {
        cachingHandler = new CachingHandler<>(dbInfoDAO, "testCache", supplier);
        when(supplier.get()).thenReturn(new ArrayList<>());
        when(dbInfoDAO.getLastModifiedCached()).thenReturn(1000L);
    }

    @Test
    public void getValues() throws Exception {
        List<GetValuesThread> threadList = Lists.newArrayList();
        for (int i = 0; i < THREAD_COUNT; i++) {
            threadList.add(new GetValuesThread(cachingHandler));
        }

        for (GetValuesThread t : threadList) {
            t.join();
            assertNull(t.throwable);
        }

        Mockito.verify(supplier, times(1)).get();
        Mockito.verify(dbInfoDAO, times(100 * THREAD_COUNT)).getLastModifiedCached();
    }

    @Test
    public void testReset() throws Exception {
        List<GetValuesThread> threadList = Lists.newArrayList();
        for (int i = 0; i < THREAD_COUNT; i++) {
            threadList.add(new GetValuesThread(cachingHandler));
        }
        new ResetThread(cachingHandler);

        for (GetValuesThread t : threadList) {
            t.join();
            assertNull(t.throwable);
        }

        Mockito.verify(supplier, atMost(100 + 1)).get();
        Mockito.verify(dbInfoDAO, times(100 * THREAD_COUNT)).getLastModifiedCached();
    }


    private static class GetValuesThread extends Thread {

        private final CachingHandler<String> cachingHandler;
        public Throwable throwable;

        public GetValuesThread(CachingHandler<String> cachingHandler) {
            this.cachingHandler = cachingHandler;
            this.start();
        }

        @Override
        public void run() {
            try {
                for (int i = 1; i <= 100; i++) {
                    List<String> values = cachingHandler.getValues();
                    assertNotNull(values);
                }
            } catch (Throwable t) {
                this.throwable = t;
            }
        }
    }

    private static class ResetThread extends Thread {

        private final CachingHandler<String> cachingHandler;
        public Throwable throwable;

        public ResetThread(CachingHandler<String> cachingHandler) {
            this.cachingHandler = cachingHandler;
            this.start();
        }

        @Override
        public void run() {
            try {
                for (int i = 1; i <= 100; i++) {
                    cachingHandler.reset();
                    ThreadUtils.sleep(1);
                }
            } catch (Throwable t) {
                this.throwable = t;
            }
        }
    }
}
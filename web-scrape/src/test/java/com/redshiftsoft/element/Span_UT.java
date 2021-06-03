package com.redshiftsoft.element;

import org.junit.Test;

import static org.junit.Assert.assertEquals;


public class Span_UT {

    @Test
    public void testNestedSpan() {
        Span childSpan = new Span("test1");
        Span parentSpan = new Span("test2");
        parentSpan.add(childSpan);
        parentSpan.add("test3");
        assertEquals("<span>test2<span>test1</span>test3</span>", parentSpan.toString());
    }

}

package com.redshiftsoft.util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class NumberUtils_UT {

    @Test
    public void isBetweenExclusive_int() {
        assertTrue(NumberUtils.isBetweenExclusive(5, 4, 6));
        assertFalse(NumberUtils.isBetweenExclusive(4, 4, 6));
        assertFalse(NumberUtils.isBetweenExclusive(6, 4, 6));
    }

    @Test
    public void isBetweenInclusive_int() {
        assertFalse(NumberUtils.isBetweenInclusive(3, 4, 6));
        assertTrue(NumberUtils.isBetweenInclusive(4, 4, 6));
        assertTrue(NumberUtils.isBetweenInclusive(5, 4, 6));
        assertTrue(NumberUtils.isBetweenInclusive(6, 4, 6));
        assertFalse(NumberUtils.isBetweenInclusive(7, 4, 6));
    }

    @Test
    public void isBetweenExclusive_long() {
        assertTrue(NumberUtils.isBetweenExclusive(5L, 4L, 6L));
        assertFalse(NumberUtils.isBetweenExclusive(4L, 4L, 6L));
        assertFalse(NumberUtils.isBetweenExclusive(6L, 4L, 6L));
    }

    @Test
    public void isBetweenInclusive_long() {
        assertFalse(NumberUtils.isBetweenInclusive(3L, 4L, 6L));
        assertTrue(NumberUtils.isBetweenInclusive(4L, 4L, 6L));
        assertTrue(NumberUtils.isBetweenInclusive(5L, 4L, 6L));
        assertTrue(NumberUtils.isBetweenInclusive(6L, 4L, 6L));
        assertFalse(NumberUtils.isBetweenInclusive(7L, 4L, 6L));
    }

    @Test
    public void isBetweenExclusive_double() {
        assertTrue(NumberUtils.isBetweenExclusive(5d, 4d, 6d));
        assertFalse(NumberUtils.isBetweenExclusive(4d, 4d, 6d));
        assertFalse(NumberUtils.isBetweenExclusive(6d, 4d, 6d));
    }

    @Test
    public void isBetweenInclusive_double() {
        assertFalse(NumberUtils.isBetweenInclusive(3D, 4D, 6D));
        assertTrue(NumberUtils.isBetweenInclusive(4D, 4D, 6D));
        assertTrue(NumberUtils.isBetweenInclusive(5D, 4D, 6D));
        assertTrue(NumberUtils.isBetweenInclusive(6D, 4D, 6D));
        assertFalse(NumberUtils.isBetweenInclusive(7D, 4D, 6D));
    }

    @Test
    public void isEvenIsOdd() {

        // isEven

        assertTrue(NumberUtils.isEven(-4));
        assertTrue(NumberUtils.isEven(-2));
        assertTrue(NumberUtils.isEven(0));
        assertTrue(NumberUtils.isEven(2));
        assertTrue(NumberUtils.isEven(4));

        assertFalse(NumberUtils.isEven(-3));
        assertFalse(NumberUtils.isEven(-1));
        assertFalse(NumberUtils.isEven(1));
        assertFalse(NumberUtils.isEven(3));

        // isOdd

        assertFalse(NumberUtils.isOdd(-4));
        assertFalse(NumberUtils.isOdd(-2));
        assertFalse(NumberUtils.isOdd(0));
        assertFalse(NumberUtils.isOdd(2));
        assertFalse(NumberUtils.isOdd(4));

        assertTrue(NumberUtils.isOdd(-3));
        assertTrue(NumberUtils.isOdd(-1));
        assertTrue(NumberUtils.isOdd(1));
        assertTrue(NumberUtils.isOdd(3));

        // isEven

        assertTrue(NumberUtils.isEven(-4L));
        assertTrue(NumberUtils.isEven(-2L));
        assertTrue(NumberUtils.isEven(0L));
        assertTrue(NumberUtils.isEven(2L));
        assertTrue(NumberUtils.isEven(4L));

        assertFalse(NumberUtils.isEven(-3L));
        assertFalse(NumberUtils.isEven(-1L));
        assertFalse(NumberUtils.isEven(1L));
        assertFalse(NumberUtils.isEven(3L));

        // isOdd

        assertFalse(NumberUtils.isOdd(-4L));
        assertFalse(NumberUtils.isOdd(-2L));
        assertFalse(NumberUtils.isOdd(0L));
        assertFalse(NumberUtils.isOdd(2L));
        assertFalse(NumberUtils.isOdd(4L));

        assertTrue(NumberUtils.isOdd(-3L));
        assertTrue(NumberUtils.isOdd(-1L));
        assertTrue(NumberUtils.isOdd(1L));
        assertTrue(NumberUtils.isOdd(3L));

    }

    @Test
    public void max() {
        assertEquals(234, NumberUtils.max(25, 67, 234, 100));
    }

    @Test
    public void max2() {
        assertThrows(IllegalArgumentException.class, () -> {
            NumberUtils.max((long[]) null);
        });
    }

    @Test
    public void max3() {
        assertThrows(IllegalArgumentException.class, () -> {
            NumberUtils.max((long[]) new long[]{});
        });
    }

    @Test
    public void min() {
        assertEquals(-10, NumberUtils.min(25, 67, 234, 100, -10, -5));
    }

    @Test
    public void min2() {
        assertThrows(IllegalArgumentException.class, () -> {
            NumberUtils.min((long[]) null);
        });
    }

    @Test
    public void min3() {
        assertThrows(IllegalArgumentException.class, () -> {
            NumberUtils.min((long[]) new long[]{});
        });
    }

    @Test
    public void willAdditionOverflow() {
        // true
        assertTrue(NumberUtils.willAdditionOverflow(1_500_000_000, 1_500_000_000));
        assertTrue(NumberUtils.willAdditionOverflow(Integer.MAX_VALUE, 1));
        assertTrue(NumberUtils.willAdditionOverflow(Integer.MAX_VALUE, Integer.MAX_VALUE));
        // false
        assertFalse(NumberUtils.willAdditionOverflow(Integer.MAX_VALUE, 0));
        assertFalse(NumberUtils.willAdditionOverflow(0, Integer.MAX_VALUE));
        assertFalse(NumberUtils.willAdditionOverflow(1, Integer.MIN_VALUE));
    }

    @Test
    public void willSubtractionOverflow() {
        // true
        assertTrue(NumberUtils.willSubtractionOverflow(Integer.MIN_VALUE, 1));
        assertTrue(NumberUtils.willSubtractionOverflow(Integer.MAX_VALUE, Integer.MIN_VALUE));
        assertTrue(NumberUtils.willSubtractionOverflow(Integer.MAX_VALUE, -1));
        assertTrue(NumberUtils.willSubtractionOverflow(0, Integer.MIN_VALUE));
        // false
        assertFalse(NumberUtils.willSubtractionOverflow(-1, Integer.MIN_VALUE));
        assertFalse(NumberUtils.willSubtractionOverflow(-2, Integer.MIN_VALUE));
        assertFalse(NumberUtils.willSubtractionOverflow(-3, Integer.MIN_VALUE));
        assertFalse(NumberUtils.willSubtractionOverflow(Integer.MIN_VALUE, -1));
        assertFalse(NumberUtils.willSubtractionOverflow(Integer.MIN_VALUE, Integer.MIN_VALUE));
        assertFalse(NumberUtils.willSubtractionOverflow(Integer.MAX_VALUE, Integer.MAX_VALUE));
        assertFalse(NumberUtils.willSubtractionOverflow(1_500_000_000, 1_500_000_000));
    }

    @Test
    public void parse() {
        double f = NumberUtils.parse("3.14159", Float.class);
        assertEquals(3.14159, f, 1e-6);

        double d1 = NumberUtils.parse("3.14159", Double.class);
        assertEquals(3.14159, d1, 1e-9);

        double d2 = NumberUtils.parse("-3.14159", Double.class);
        assertEquals(-3.14159, d2, 1e-9);

        double d3 = NumberUtils.parse(" -3.14159  \t", Double.class);
        assertEquals(-3.14159, d3, 1e-9);

        short s = NumberUtils.parse("31415", Short.class);
        assertEquals(31415, s);

        short b = NumberUtils.parse("35", Byte.class);
        assertEquals(35, b);

        int i = NumberUtils.parse("314159", Integer.class);
        assertEquals(314159, i);

        long L = NumberUtils.parse("31415900000000", Long.class);
        assertEquals(31415900000000L, L);
    }

}

package com.redshiftsoft.util;

/**
 * Number utils.
 */
public final class NumberUtils {

    private NumberUtils() {
    }

    public static boolean isBetweenExclusive(int test, int lower, int upper) {
        return test > lower && test < upper;
    }

    public static boolean isBetweenInclusive(int test, int lower, int upper) {
        return test >= lower && test <= upper;
    }


    public static boolean isBetweenExclusive(long test, long lower, long upper) {
        return test > lower && test < upper;
    }

    public static boolean isBetweenInclusive(long test, long lower, long upper) {
        return test >= lower && test <= upper;
    }


    public static boolean isBetweenExclusive(double test, double lower, double upper) {
        return test > lower && test < upper;
    }

    public static boolean isBetweenInclusive(double test, double lower, double upper) {
        return test >= lower && test <= upper;
    }

    public static boolean isPositive(Number n) {
        return n != null && n.doubleValue() > 0;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public static long max(long... values) {
        Conditions.checkArgument(values != null && values.length > 0);
        long max = Long.MIN_VALUE;
        for (long v : values) {
            max = Math.max(max, v);
        }
        return max;
    }

    public static long min(long... values) {
        Conditions.checkArgument(values != null && values.length > 0);
        long min = Long.MAX_VALUE;
        for (long v : values) {
            min = Math.min(min, v);
        }
        return min;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public static boolean isEven(long number) {
        return number % 2 == 0;
    }

    public static boolean isOdd(long number) {
        return !isEven(number);
    }

    public static boolean isEven(int number) {
        return number % 2 == 0;
    }

    public static boolean isOdd(int number) {
        return !isEven(number);
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public static boolean willAdditionOverflow(int left, int right) {
        int r = left + right;
        // HD 2-12 Overflow iff both arguments have the opposite sign of the result
        return (((left ^ r) & (right ^ r)) < 0);
    }

    public static boolean willSubtractionOverflow(int left, int right) {
        int r = left - right;
        // HD 2-12 Overflow iff the arguments have different signs and the sign of the result is different than the sign of x
        return (((left ^ right) & (left ^ r)) < 0);
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    /**
     * Parse the specified number as the specified Number type.  Extra white space is ignored. Null is returned if
     * and only if the string cannot be parsed as a number of the specified type.
     */
    @SuppressWarnings("unchecked")
    public static <T extends Number> T parse(String numberString, Class<T> numberClass) {
        if (StringTools.isEmpty(numberString)) {
            return null;
        }
        try {
            if (numberClass.equals(Double.class)) {
                return (T) Double.valueOf(numberString);
            } else if (numberClass.equals(Long.class)) {
                return (T) Long.valueOf(numberString);
            } else if (numberClass.equals(Integer.class)) {
                return (T) Integer.valueOf(numberString);
            } else if (numberClass.equals(Float.class)) {
                return (T) Float.valueOf(numberString);
            } else if (numberClass.equals(Short.class)) {
                return (T) Short.valueOf(numberString);
            } else if (numberClass.equals(Byte.class)) {
                return (T) Byte.valueOf(numberString);
            } else {
                throw new IllegalArgumentException("unsupported number class=" + numberClass);
            }
        } catch (NumberFormatException e) {
            /* nothing */
        }
        return null;
    }


}

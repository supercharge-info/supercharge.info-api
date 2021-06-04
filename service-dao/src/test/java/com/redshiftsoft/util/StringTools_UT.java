package com.redshiftsoft.util;

import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.*;

import static org.junit.Assert.*;

public class StringTools_UT {

    private static String result;

    @Test
    public void equals() {
        String rand = RandomUtils.fast().getString(10, 1000, 'a', 'z');

        assertTrue(StringTools.equals(null, null));
        assertTrue(StringTools.equals("", ""));

        assertFalse(StringTools.equals("", null));
        assertFalse(StringTools.equals(null, ""));

        assertTrue(StringTools.equals(rand, rand));
        assertFalse(StringTools.equals(rand, null));
        assertFalse(StringTools.equals(null, rand));

        assertFalse(StringTools.equals(rand, rand.toUpperCase()));

    }

    @Test
    public void equalsIgnoreCase() {
        String rand = RandomUtils.fast().getString(10, 1000, 'a', 'z');

        assertTrue(StringTools.equalsIgnoreCase(null, null));
        assertTrue(StringTools.equalsIgnoreCase("", ""));

        assertFalse(StringTools.equalsIgnoreCase("", null));
        assertFalse(StringTools.equalsIgnoreCase(null, ""));

        assertTrue(StringTools.equalsIgnoreCase(rand, rand));
        assertFalse(StringTools.equalsIgnoreCase(rand, null));
        assertFalse(StringTools.equalsIgnoreCase(null, rand));

        assertTrue(StringTools.equalsIgnoreCase(rand, rand.toUpperCase()));
    }

    @Test
    public void containsIgnoreCase() {
        // simple case, equal length
        assertTrue(StringTools.containsIgnoreCase("ABC", "ABC"));
        assertTrue(StringTools.containsIgnoreCase("abc", "ABC"));
        assertTrue(StringTools.containsIgnoreCase("ABC", "abc"));

        // simple case, non equal length
        assertTrue(StringTools.containsIgnoreCase("___ABC___", "ABC"));
        assertFalse(StringTools.containsIgnoreCase("ABC", "___ABC___"));

        // mixed case
        assertTrue(StringTools.containsIgnoreCase("___AbC___", "aBc"));
        assertFalse(StringTools.containsIgnoreCase("AbC", "___aBc___"));
    }


    @Test
    public void compare() {
        assertEquals(0, StringTools.compare(null, null));
        assertEquals(-1, StringTools.compare(null, "aaa"));
        assertEquals(1, StringTools.compare("aaa", null));
        assertEquals(-1, StringTools.compare("aaa", "bbb"));
        assertEquals(1, StringTools.compare("bbb", "aaa"));
    }

    @Test
    public void padR() {
        // Normal
        result = StringTools.padR("keith", '*', 10);
        assertEquals(result, "keith*****");

        // Empty String
        result = StringTools.padR("", '*', 10);
        assertEquals(result, "**********");

        // Null string
        result = StringTools.padR(null, '*', 10);
        assertNull(result);

    }

    @Test
    public void padL() {
        // Normal
        result = StringTools.padL("keith", '*', 10);
        assertEquals(result, "*****keith");

        // Empty String
        result = StringTools.padL("", '*', 10);
        assertEquals(result, "**********");

        // Null string
        result = StringTools.padL(null, '*', 10);
        assertNull(result);

    }

    @Test
    public void repeat() {
        assertEquals("*****", StringTools.repeat("*", 5));
        assertEquals("", StringTools.repeat("", 5));
        assertEquals("", StringTools.repeat("*", 0));

        assertEquals("", StringTools.repeat("AB", 0));
        assertEquals("AB", StringTools.repeat("AB", 1));
        assertEquals("ABABABABABABABABABAB", StringTools.repeat("AB", 10));
    }

    @Test
    public void repeat_shouldThrow_givenNegativeTimesArg() {
        try {
            StringTools.repeat("*", -1);
            fail("expected throw");
        } catch (IllegalArgumentException e) {
            assertEquals("times parameter cannot be negative", e.getMessage());
        }
    }

    @Test
    public void replaceAll() {
        /* Short string */
        String s1 = "<";
        String s2 = StringTools.replaceAll(s1, "<", "&lt;");
        assertTrue(s2.equals("&lt;"));

        /* boundary conditions */
        s1 = "((------(-(------((";
        s2 = StringTools.replaceAll(s1, "((", "XX");
        assertTrue(s2.equals("XX------(-(------XX"));

        /* don't choke on nested */
        s1 = "---Keith---";
        s2 = StringTools.replaceAll(s1, "Keith", "KeithKeithKeith");
        assertTrue(s2.equals("---KeithKeithKeith---"));
    }

    @Test
    public void testTime1() {
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 50123; i++) {
            StringTools.padR("number" + i, 'x', i % 30);
        }
        long elapsed = System.currentTimeMillis() - startTime;
        assertTrue(elapsed < 1000 * 2);
    }

    @Test
    public void isEmpty() {
        boolean test01 = StringTools.isEmpty(null);
        boolean test02 = StringTools.isEmpty("");
        boolean test03 = StringTools.isEmpty("     ");
        boolean test04 = StringTools.isEmpty("  \n  ");
        boolean test05 = StringTools.isEmpty(" \n\n\n\n\n ");
        boolean test06 = StringTools.isEmpty("\n\n\n\n\n");
        boolean test07 = StringTools.isEmpty("\n\r\n\r\n");

        boolean test08 = StringTools.isEmpty("\t \r \n");

        assertTrue(test01 && test02 && test03 && test04 && test05 && test06 && test07 && test08);

        boolean test10 = StringTools.isEmpty("    1");
        boolean test11 = StringTools.isEmpty("1     ");
        boolean test12 = StringTools.isEmpty("   \n   .");

        assertFalse(test10 || test11 || test12);

    }

    @Test
    public void isEmptySpeedTest() {

        int SIZE = 1000;
        int TIMES = 3;

        List<String> strings = new ArrayList<>(SIZE);
        for (int i = 0; i < SIZE; i++) {
            /* NULL */
            if (RandomUtils.fast().getBoolean(.1)) {
                strings.add(null);
            }
            /* ZERO LEN */
            else if (RandomUtils.fast().getBoolean(.1)) {
                strings.add("");
            }
            /* EMPTY */
            else if (RandomUtils.fast().getBoolean(.1)) {
                strings.add(StringTools.padL(" ", ' ', RandomUtils.fast().getInteger(10, 100)));
            }
            /* NOT EMPTY BUT LOTS OF SPACE */
            else if (RandomUtils.fast().getBoolean(.1)) {
                String b = StringTools.padL(" ", ' ', RandomUtils.fast().getInteger(10, 100)) +
                        StringTools.padL(" ", 'x', RandomUtils.fast().getInteger(10, 100)) +
                        StringTools.padL(" ", ' ', RandomUtils.fast().getInteger(10, 100));
                strings.add(b);
            }
            /* NOT EMPTY */
            else {
                strings.add(RandomUtils.fast().getString(10, 200, 'a', 'z'));
            }
        }

        for (int j = 0; j < TIMES; j++) {

            long startTime = System.currentTimeMillis();
            int emptyCount = 0;
            for (String s : strings) {
                if (StringTools.isEmpty(s)) {
                    emptyCount++;
                }
            }
            long elapsedTime = System.currentTimeMillis() - startTime;
            assertTrue(elapsedTime <= 100);
            System.out.println("EMPTY: " + emptyCount + " AFTER: " + elapsedTime);
        }
    }

    @Test
    public void isNotEmpty() {
        boolean test01 = StringTools.isNotEmpty(null);
        boolean test02 = StringTools.isNotEmpty("");
        boolean test03 = StringTools.isNotEmpty("     ");
        boolean test04 = StringTools.isNotEmpty("  \n  ");
        boolean test05 = StringTools.isNotEmpty(" \n\n\n\n\n ");
        boolean test06 = StringTools.isNotEmpty("\n\n\n\n\n");
        boolean test07 = StringTools.isNotEmpty("\n\r\n\r\n");
        boolean test08 = StringTools.isNotEmpty("\t");

        assertFalse(test01 || test02 || test03 || test04 || test05 || test06 || test07 || test08);

        boolean test10 = StringTools.isNotEmpty("    1");
        boolean test11 = StringTools.isNotEmpty("1     ");
        boolean test12 = StringTools.isNotEmpty("   \n   .");

        assertTrue(test10 && test11 && test12);

    }

    @Test
    public void toString_Array() {
        String[] array = {"one", "two", "three", "four", "five"};
        /* single char delimiter */
        String result1 = StringTools.toString(array, ",");
        assertTrue(result1.equals("one,two,three,four,five"));

        /* multi char delimiter */
        String result2 = StringTools.toString(array, " | ");
        assertTrue(result2.equals("one | two | three | four | five"));

        /* single element array */
        String result3 = StringTools.toString(new String[]{"one"}, " | ");
        assertTrue(result3.equals("one"));

        /* zero char delimiter */
        String result4 = StringTools.toString(array, "");
        assertTrue(result4.equals("onetwothreefourfive"));
    }

    @Test
    public void toString_Collection() {
        Set<String> set = new TreeSet<>();
        set.add("11");
        set.add("22");
        set.add("33");
        set.add("44");
        set.add("55");

        /* single char delimiter */
        String result1 = StringTools.toString(set, ",");
        assertTrue(result1.equals("11,22,33,44,55"));

        /* multi char delimiter */
        String result2 = StringTools.toString(set, " | ");
        assertTrue(result2.equals("11 | 22 | 33 | 44 | 55"));

        Set<String> set2 = new HashSet<>();
        set2.add("11");
        /* single element array */
        String result3 = StringTools.toString(set2, " | ");
        assertTrue(result3.equals("11"));

        /* zero char delimiter */
        String result4 = StringTools.toString(set, "");
        assertTrue(result4.equals("1122334455"));
    }

    @Test
    public void toString_String() {
        assertEquals("test", StringTools.toString("test"));
        assertEquals("", StringTools.toString(null));
        assertEquals("12345", StringTools.toString(12345));
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Test
    public void toStringFromUTF8() throws UnsupportedEncodingException {
        String expected = RandomUtils.fast().getParagraph(1, 4096, 100, 10, (char) 1, (char) 512);
        byte[] bytes = expected.getBytes(StandardCharsets.UTF_8);
        String actual = StringTools.toStringFromUTF8(bytes);
        assertEquals(expected, actual);
    }

    @Test
    public void toStringFromUTF8_ReturnsEmptyString_WhenByteArrayIsEmpty() {
        String actual = StringTools.toStringFromUTF8(new byte[0]);
        assertEquals("", actual);
    }

    @Test
    public void toStringFromUTF8_ReturnsNull_WhenByteArrayIsNull() {
        String actual = StringTools.toStringFromUTF8(null);
        assertEquals(null, actual);
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Test
    public void toUTF8BytesFromString() {
        String expected = RandomUtils.fast().getParagraph(1, 4096, 100, 10, (char) 1, (char) 512);
        byte[] bytes = StringTools.toUTF8BytesFromString(expected);
        String actual = new String(bytes, StandardCharsets.UTF_8);
        assertEquals(expected, actual);
    }

    @Test
    public void toUTF8BytesFromString_ReturnsEmptyByteArray_WhenStringIsEmpty() throws UnsupportedEncodingException {
        byte[] bytes = StringTools.toUTF8BytesFromString("");
        assertEquals(0, bytes.length);
    }

    @Test
    public void toUTF8BytesFromString_ReturnsNull_WhenStringIsNull() throws UnsupportedEncodingException {
        byte[] bytes = StringTools.toUTF8BytesFromString(null);
        assertNull(bytes);
    }

    @Test
    public void toUTF8BytesFromString_RoundTrip() {
        // null
        byte[] b = StringTools.toUTF8BytesFromString(null);
        String s = StringTools.toStringFromUTF8(b);
        assertNull(s);

        // empty
        b = StringTools.toUTF8BytesFromString("");
        s = StringTools.toStringFromUTF8(b);
        assertEquals("", s);
    }

    @Test
    public void fromString() {

        // -------------------------------------------------------------------------
        // trim=false
        // -------------------------------------------------------------------------

        /* TEST: Basic */
        String string1 = "one,two,three,four,five";
        List<String> list = StringTools.fromString(string1, ",", false);
        String string2 = StringTools.toString(list, ",");
        assertEquals(string1, string2);

        /* TEST: misc spaces */
        string1 = "    one ,   two , three,four, five ";
        list = StringTools.fromString(string1, ",", false);
        string2 = StringTools.toString(list, ",");
        assertEquals(string1, string2);

        /* TEST: one element */
        list = StringTools.fromString("one", ",", false);
        string2 = StringTools.toString(list, ",");
        assertEquals("one", string2);

        /* TEST: empty elements */
        list = StringTools.fromString("one, ,three", ",", false);
        string2 = StringTools.toString(list, ",");
        assertEquals("one, ,three", string2);

        /* TEST: empty trailing elements */
        list = StringTools.fromString("one, ,three, , ,,", ",", false);
        string2 = StringTools.toString(list, ",");
        assertEquals("one, ,three, , ,,", string2);

        // -------------------------------------------------------------------------
        // trim=true
        // -------------------------------------------------------------------------

        /* TEST: Basic */
        string1 = "one,two,three,four,five";
        list = StringTools.fromString(string1, ",", true);
        string2 = StringTools.toString(list, ",");
        assertEquals(string1, string2);

        /* TEST: misc spaces */
        list = StringTools.fromString("    one ,   two , three,four, five ", ",", true);
        string2 = StringTools.toString(list, ",");
        assertEquals(string1, string2);

        /* TEST: one element */
        list = StringTools.fromString("one", ",", true);
        string2 = StringTools.toString(list, ",");
        assertEquals("one", string2);

        /* TEST: empty elements */
        list = StringTools.fromString("one, ,three", ",", true);
        string2 = StringTools.toString(list, ",");
        assertEquals("one,,three", string2);

        /* TEST: empty trailing elements */
        list = StringTools.fromString("one, ,three, , ,,", ",", true);
        string2 = StringTools.toString(list, ",");
        assertEquals("one,,three,,,,", string2);

    }

    @Test
    public void stackTrace() {
        try {
            throw new TestException("This is the message", new IllegalAccessException("Cause message"));
        } catch (Exception e) {
            String s = StringTools.stackTrace(e);
            assertTrue(s != null);
        }

    }

    @Test
    public void toUnicodeEscaped() {
        String s1 = "keith\u4f53\u7d50\u679c\u3068\u691c\u8a3c\u60c5\u5831\u306e\u4fdd\u5b58";
        String s2 = StringTools.toUnicodeEscaped(s1);
        assertEquals("keith\\u4f53\\u7d50\\u679c\\u3068\\u691c\\u8a3c\\u60c5\\u5831\\u306e\\u4fdd\\u5b58", s2);

        s1 = "\u00ff\u306e\u72b6\u6cc1BCI\u3068\u30a2\u30e9\u30fc\u00ff";
        s2 = StringTools.toUnicodeEscaped(s1);
        assertEquals(((char) 0xff) + "\\u306e\\u72b6\\u6cc1BCI\\u3068\\u30a2\\u30e9\\u30fc" + ((char) 0xff),
                s2);

        s1 = "\u0256\u0056\u6cc1BCI\u3068\u30a2\u30e9\u30fc\u30e0";
        s2 = StringTools.toUnicodeEscaped(s1);
        assertEquals("\\u0256V\\u6cc1BCI\\u3068\\u30a2\\u30e9\\u30fc\\u30e0", s2);

        s1 = "This is a test";
        s2 = StringTools.toUnicodeEscaped(s1);
        assertEquals(s1, s2);

    }

    @Test
    public void occurrenceCount() {
        assertEquals(0, StringTools.occurrenceCount("xx", "ab"));
        assertEquals(0, StringTools.occurrenceCount("x", "ab"));
        assertEquals(0, StringTools.occurrenceCount("", "ab"));

        assertEquals(1, StringTools.occurrenceCount("|ab|", "ab"));
        assertEquals(1, StringTools.occurrenceCount("ab|", "ab"));
        assertEquals(1, StringTools.occurrenceCount("|ab", "ab"));

        assertEquals(2, StringTools.occurrenceCount("|abab|", "ab"));
        assertEquals(2, StringTools.occurrenceCount("abab|", "ab"));
        assertEquals(2, StringTools.occurrenceCount("|abab", "ab"));

        assertEquals(3, StringTools.occurrenceCount("|ababab|", "a"));
        assertEquals(6, StringTools.occurrenceCount("a|aaaa|a", "a"));
        assertEquals(2, StringTools.occurrenceCount("aaaaaa", "aaa"));
    }

    class TestException extends Exception {
        public TestException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}
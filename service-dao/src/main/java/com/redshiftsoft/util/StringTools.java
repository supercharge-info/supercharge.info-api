package com.redshiftsoft.util;


import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import static com.redshiftsoft.util.Conditions.checkNotNull;

/**
 * Miscellaneous commonly used string logic.
 */
public final class StringTools {

    /**
     * String padding method. Pads on the right side.
     *
     * @param message     The message part of the resulting string.
     * @param padChar     The character used for padding.
     * @param sizeWithPad The number of pad characters to add to the message.
     * @return the input message with the specified character appended until the specified length is reached.
     */
    public static String padR(final String message, final char padChar, final int sizeWithPad) {
        StringBuilder result = new StringBuilder(sizeWithPad);

        if (message == null) {
            return null;
        }
        int inLength = message.length();
        if (inLength >= sizeWithPad) {
            return message;
        }

        result.append(message);
        result.append(String.valueOf(padChar).repeat(sizeWithPad - inLength));

        return result.toString();
    }

    /**
     * String padding method. Pads on the left side.
     *
     * @param message     The message part of the resulting string.
     * @param padChar     The character used for padding.
     * @param sizeWithPad The number of pad characters to add to the message.
     * @return the input message with the specified character appended until the specified length is reached.
     */
    public static String padL(final String message, final char padChar, final int sizeWithPad) {
        StringBuilder result = new StringBuilder(sizeWithPad);

        if (message == null) {
            return null;
        }
        int inLength = message.length();
        if (inLength >= sizeWithPad) {
            return message;
        }

        result.append(String.valueOf(padChar).repeat(sizeWithPad - inLength));
        result.append(message);

        return result.toString();
    }

    /**
     * Build a string in which the specified input message is repeated the specified number of times.
     *
     * @param message The characters to repeat.
     * @param times   The number of times to repeat.
     * @return A string with the specified message repeated.
     */
    public static String repeat(final String message, int times) {
        Conditions.checkArgument(times >= 0, "times parameter cannot be negative");
        StringBuilder b = new StringBuilder(message.length() * times);
        b.append(message.repeat(times));
        return b.toString();
    }

    /**
     * This is much faster than java.lang.String.replaceAll() because it does NOT use regular expressions.
     *
     * @param in          The string in which we will search for sub-strings to replace.
     * @param find        The sub-string to replace.
     * @param replaceWith The string which replaces any found sub-strings.
     * @return String with replacements made.
     */
    public static String replaceAll(final String in, final String find, final String replaceWith) {
        int index = in.indexOf(find);
        if (index < 0) {
            return in;
        }

        StringBuilder buffer = new StringBuilder(in);

        while ((index = buffer.indexOf(find, index)) > -1) {
            buffer.replace(index, index + find.length(), replaceWith);
            index = index + replaceWith.length();
        }

        return buffer.toString();
    }

    /**
     * Used to determine if a string is empty or not. A string is empty if it is (1) null, (2) zero length, or
     * (3) all white spaces.
     *
     * @param string String to test.
     * @return TRUE if the string is empty, FALSE otherwise.
     */
    public static boolean isEmpty(final String string) {
        /* Tried several implementations, this is the fastest I found. */
        return (string == null || string.length() == 0 || string.trim().length() == 0);
    }

    /**
     * Used to determine if a string is empty or not. A string is empty if it is (1) null, (2) zero length, or
     * (3) all white spaces.
     *
     * @param string String to test.
     * @return FALSE if the string is empty, TRUE otherwise.
     */
    public static boolean isNotEmpty(final String string) {
        return !isEmpty(string);
    }

    /**
     * A string equality test which returns TRUE if both strings are null or if the strings are equal
     * according the String.equals() method. Using this can lead to slightly more concise code when checking
     * the equality of two strings, either of which may be null.
     *
     * @param string1 first operand
     * @param string2 second operand
     * @return equality according to description above.
     */
    public static boolean equals(final String string1, final String string2) {
        if (string1 == null && string2 == null) {
            return true;
        } else if (string1 == null) {
            return false;
        }
        return string1.equals(string2);

    }

    /**
     * A string equality test which returns TRUE if both strings are null or if the strings are equal
     * according the String.equalsIgnoreCase() method. Using this can lead to slightly more concise code when
     * checking the equality of two strings, either of which may be null.
     *
     * @param string1 first operand
     * @param string2 second operand
     * @return equality according to description above.
     */
    public static boolean equalsIgnoreCase(final String string1, final String string2) {
        if (string1 == null && string2 == null) {
            return true;
        } else if (string1 == null) {
            return false;
        }
        return string1.equalsIgnoreCase(string2);
    }

    /**
     * Case insensitive null safe contains.
     *
     * @return True if string1 contains string2.
     */
    public static boolean containsIgnoreCase(final String string1, final String string2) {
        if (string1 == null && string2 == null) {
            return true;
        } else if (string1 == null) {
            return false;
        }
        return string1.toLowerCase().contains(string2.toLowerCase());
    }

    /**
     * Compare two strings, allowing one, or both, to be null.
     *
     * @param string1 first operand
     * @param string2 second operand
     * @return 0 if both or null, -1 if the first is null, 1 if the second is null, comparison value if neither are null.
     */
    public static int compare(final String string1, final String string2) {
        if (string1 == null && string2 == null) {
            return 0;
        } else if (string1 == null) {
            return -1;
        } else if (string2 == null) {
            return 1;
        }
        return string1.compareTo(string2);
    }

    /**
     * Converts array of objects to single string, where each object is separated by the indicated delimiter.
     *
     * @param array     The string array to convert.
     * @param delimiter The delimiter that appears in the returned value.
     * @return an array of strings into a single string, which each array value separated by the indicated
     * delimiter character(s).
     */
    public static String toString(final Object[] array, final String delimiter) {
        if (array == null) {
            return null;
        }
        int sizeGuess = array.length * 10;
        StringBuilder buffer = new StringBuilder(sizeGuess);

        for (int i = 0; i < array.length; i++) {
            buffer.append(array[i].toString());
            if (i < array.length - 1) {
                buffer.append(delimiter);
            }
        }
        return buffer.toString();
    }

    /**
     * Converts a collection of objects to a single string, where each object is separated by the indicated
     * delimiter.
     *
     * @param collection A collection of elements to return as a string.
     * @param delimiter  The delimiter that will separate elements in the string.
     * @return A string with the elements of the collection separated by the delimiter.
     */
    public static String toString(final Collection<?> collection, final String delimiter) {
        StringBuilder result = new StringBuilder();
        for (Iterator<?> iterator = collection.iterator(); iterator.hasNext(); ) {
            result.append(iterator.next().toString());
            if (iterator.hasNext()) {
                result.append(delimiter);
            }
        }
        return result.toString();
    }

    /**
     * If the object is null return an empty string, otherwise return the result of object.toString().
     *
     * @param object The object to convert to a string.
     * @return Empty string or toString() result.
     */
    public static String toString(Object object) {
        return object == null ? "" : object.toString();
    }

    /**
     * An unchecked method for converting between UTF-8 encoded bytes and a string.
     *
     * @param bytes representing a String, MUST be UTF-8 encoding.
     * @return The string encoded by the bytes.
     */
    public static String toStringFromUTF8(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        return new String(bytes, StandardCharsets.UTF_8);
    }

    /**
     * An unchecked method for converting between strings and UTF-8 encoded bytes.
     *
     * @param string to be converted
     * @return UTF-8 encoded bytes
     */
    public static byte[] toUTF8BytesFromString(final String string) {
        if (string == null) {
            return null;
        }
        return string.getBytes(StandardCharsets.UTF_8);
    }

    /**
     * Given a string of one or more items separated by a delimiter, return a List in which each string item
     * is an element. Empty elements will be represented by empty strings in the returned list (not by null).
     * Trailing empty elements ARE returned.
     *
     * @param listString String of elements.
     * @param delimiter  Regular expression designating delimiter character(s).
     * @param trim       Indicates whether white space should be removed from head/tail of each element.
     * @return A List where each element comes from the string.
     */
    public static List<String> fromString(final String listString, final String delimiter, final boolean trim) {
        List<String> result = new LinkedList<>();
        String[] array = listString.split(delimiter, -1);
        for (String s : array) {
            if (trim) {
                result.add(s.trim());
            } else {
                result.add(s);
            }
        }
        return result;
    }

    /**
     * Convert an arbitrary string into a string where unicode characters larger than 255 are represented with
     * unicode hexadecimal escape sequences.
     * <p/>
     * http://java.sun.com/developer/technicalArticles/Intl/Supplementary/
     *
     * @param string The string to convert.
     * @return The returned string will have no un-escaped characters larger than 255.
     */
    public static String toUnicodeEscaped(final String string) {
        StringBuilder buffer = new StringBuilder();
        for (int index = 0; index < string.length(); index++) {
            char c = string.charAt(index);
            if (c > 255) {
                buffer.append("\\u");
                String hex = Long.toString(c, 16);
                int i = hex.length();
                while (i++ < 4) {
                    buffer.append("0");
                }
                buffer.append(hex);
            } else {
                buffer.append(c);
            }
        }
        return buffer.toString();
    }

    /**
     * Returns the number of times 'testString' occurs within 'withinString'.
     */
    public static int occurrenceCount(String withinString, String testString) {
        checkNotNull(withinString);
        checkNotNull(testString);
        int count = 0;
        int startIndex = withinString.indexOf(testString);
        while (startIndex >= 0) {
            count++;
            startIndex = withinString.indexOf(testString, startIndex + testString.length());
        }
        return count;
    }

    /**
     * Gets the stack trace of an exception as a string. This will print: <br>
     * <ol>
     * <li>The exception class
     * <li>The message
     * <li>The stack trace
     * <li>the previous three items for each cause exception in the chain
     * </ol>
     * <br>
     *
     * @param e The exception to get a stack trace for.
     * @return Stack trace as a string.
     */
    public static String stackTrace(final Throwable e) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        e.printStackTrace(pw);
        pw.flush();
        return sw.getBuffer().toString();
    }

}
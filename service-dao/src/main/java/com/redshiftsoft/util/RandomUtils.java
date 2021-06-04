package com.redshiftsoft.util;

import java.security.SecureRandom;
import java.util.*;

import static com.redshiftsoft.util.Conditions.checkArgument;


/**
 * Class for conveniently generating random numbers/strings within a specified range.
 */
public class RandomUtils {

    private static final String ERROR_MIN_MAX = "Min value '%s' cannot be greater than max '%s'";
    private static final RandomUtils UTILS_SECURE = new RandomUtils(new SecureRandom());
    private static final RandomUtils UTILS_FAST = new RandomUtils(new Random());

    private final Random random;

    /**
     * Construct
     */
    public RandomUtils(Random random) {
        this.random = random;
    }

    /**
     * Factory method that returns and instance of this class using an instance of SecureRandom
     */
    public static RandomUtils secure() {
        return UTILS_SECURE;
    }

    /**
     * Factory method that returns and instance of this class using an instance of Random
     */
    public static RandomUtils fast() {
        return UTILS_FAST;
    }

    /**
     * Return a random integer within [Integer.MIN_VALUE, Integer.MAX_VALUE];
     */
    public byte getByte() {
        return (byte) getInteger(Byte.MIN_VALUE, Byte.MAX_VALUE);
    }

    /**
     * Return a random byte within the given closed set [min,max];
     *
     * @param min lower bound
     * @param max upper bound
     * @return random byte
     */
    public byte getByte(final int min, final int max) {
        return (byte) getInteger(min, max);
    }

    /**
     * Return an array of random bytes.
     *
     * @param count The number of bytes, size of the returned array.
     * @return Array of random bytes.
     */
    public byte[] getBytes(final int count) {
        byte[] bytes = new byte[count];
        random.nextBytes(bytes);
        return bytes;
    }

    /**
     * Return a random integer within [Integer.MIN_VALUE, Integer.MAX_VALUE];
     */
    public int getInteger() {
        return random.nextInt();
    }

    /**
     * Return a random integer within the given closed set [min,max];
     *
     * @param min lower bound inclusive
     * @param max upper bound inclusive
     * @return random integer
     */
    public int getInteger(final int min, final int max) {
        checkArgument(min <= max, "min must be <= max");
        // below impl is about 50% faster than returning "(int)getLong(min,max)"
        if (NumberUtils.willSubtractionOverflow(max, min) || (max - min == Integer.MAX_VALUE)) {
            long diff = Math.abs(((long) max - (long) min) / 2L);
            int middle = min + (int) diff;
            if (random.nextBoolean()) {
                return getInteger(min, middle - 1);
            } else {
                return getInteger(middle, max);
            }
        }
        return min + random.nextInt(max - min + 1);
    }

    /**
     * Same as getInteger method above, but does not check arguments. Performs slightly better (3% or so) when
     * arguments are known to be valid.
     */
    public int getIntegerNoCheck(final int min, final int max) {
        return min + random.nextInt(max - min + 1);
    }

    /**
     * Return a list of random integer within the given closed set [min,max];
     *
     * @param min     lower bound
     * @param max     upper bound
     * @param howMany number of elements to return
     * @return list of random integers
     */
    public List<Integer> getIntegerList(final int min, final int max, int howMany) {
        checkArgument(howMany >= 0, "howMany must be >=0 than 0, not %d", howMany);
        List<Integer> result = new ArrayList<>(howMany);
        for (int i = 0; i < howMany; i++) {
            result.add(getInteger(min, max));
        }
        return result;
    }

    /**
     * Return a random long within [Long.MIN_VALUE, Long.MAX_VALUE];
     */
    public long getLong() {
        return random.nextLong();
    }

    /**
     * Return a random long within the given closed set [min,max];
     *
     * @param min lower bound inclusive
     * @param max upper bound inclusive
     * @return random long
     */
    public long getLong(final long min, final long max) {
        checkArgument(min <= max, ERROR_MIN_MAX, min, max);
        long difference = max - min + 1;
        if (difference < 0 || difference == 0) {
            // This can only happen when there is an integer overflow.
            throw new IllegalArgumentException("magnitude of range must be < Long.MAX_VALUE");
        }
        double r = random.nextDouble();
        return min + (long) Math.ceil(difference * r) - 1;
    }

    /**
     * Return a list of random long within the given closed set [min,max];
     *
     * @param min     lower bound
     * @param max     upper bound
     * @param howMany number of longs to return
     * @return list of random longs
     */
    public List<Long> getLongList(final long min, final long max, int howMany) {
        checkArgument(howMany >= 0, "howMany must be >=0 than 0, not %d", howMany);
        List<Long> result = new ArrayList<>(howMany);
        for (int i = 0; i < howMany; i++) {
            result.add(getLong(min, max));
        }
        return result;
    }

    /**
     * Return a random float within [0.0, 1.0];
     */
    public float getFloat() {
        return random.nextFloat();
    }

    /**
     * Return a random float within the given closed set [min,max]
     *
     * @param min lower bound
     * @param max upper bound
     * @return random float
     */
    public float getFloat(final float min, final float max) {
        checkArgument(min <= max, ERROR_MIN_MAX, min, max);
        /* The following cast MUST be there when abs(max - min) > MAX_VALUE */
        double difference = (double) max - min;
        double r = random.nextDouble();

        return min + (float) (difference * r);
    }

    /**
     * Return a list of random float within the given closed set [min,max];
     *
     * @param min     lower bound
     * @param max     upper bound
     * @param howMany number of elements to return
     * @return list of random floats
     */
    public List<Float> getFloatList(final float min, final float max, int howMany) {
        checkArgument(howMany >= 0, "howMany must be >=0 than 0, not %d", howMany);
        List<Float> result = new ArrayList<>(howMany);
        for (int i = 0; i < howMany; i++) {
            result.add(getFloat(min, max));
        }
        return result;
    }

    /**
     * Return a random double within [0.0, 1.0];
     */
    public double getDouble() {
        return random.nextDouble();
    }

    /**
     * Return a random double within the given closed set [min,max]
     *
     * @param min lower bound
     * @param max upper bound
     * @return random double
     */
    public double getDouble(final double min, final double max) {
        checkArgument(min <= max, ERROR_MIN_MAX, min, max);
        double difference = max - min;
        double r = random.nextDouble();

        return min + (difference * r);
    }

    /**
     * Return a list of random double within the given closed set [min,max];
     *
     * @param min     lower bound
     * @param max     upper bound
     * @param howMany number of elements to return
     * @return list of random doubles
     */
    public List<Double> getDoubleList(final double min, final double max, int howMany) {
        checkArgument(howMany >= 0, "howMany must be >=0 than 0, not %d", howMany);
        List<Double> result = new ArrayList<>(howMany);
        for (int i = 0; i < howMany; i++) {
            result.add(getDouble(min, max));
        }
        return result;
    }

    /**
     * Return a random boolean
     */
    public boolean getBoolean() {
        return random.nextBoolean();
    }

    /**
     * Returns a random boolean value.
     *
     * @param trueWeight [0 to 1] indicating the percentage of the time TRUE should be returned.
     * @return Either TRUE or FALSE
     */
    public boolean getBoolean(final double trueWeight) {
        final int MAX = 1000;
        final int midPoint = (int) (MAX * trueWeight);
        int i = getInteger(1, MAX);
        return i < midPoint;
    }

    /**
     * Get a random element from a list.
     *
     * @param list The list to select an element from. Must have at least one element.
     * @return One of the elements.
     * @throws IllegalArgumentException if list has zero elements.
     */
    public <T> T getElement(final List<T> list) {
        int maxIndex = list.size() - 1;
        int index = getInteger(0, maxIndex);
        return list.get(index);
    }

    /**
     * Get a random element from a collection.
     *
     * @param collection The collection to select an element from. Must have at least one element.
     * @return One of the elements.
     * @throws IllegalArgumentException if list has zero elements.
     */
    public <T> T getElement(final Collection<T> collection) {
        int maxIndex = collection.size() - 1;
        int index = getInteger(0, maxIndex);
        int i = 0;
        T element = null;
        for (T aCollection : collection) {
            element = aCollection;
            if (i == index) {
                break;
            }
            i++;
        }
        return element;
    }

    /**
     * Get the specified number of random elements from a collection.
     *
     * @param collection The collection to select elements from. Must have at least one element.
     * @param howMany    number of elements to return.
     * @return A list of random elements where order of the list returned is not related to the order of the input list.
     */
    public <T> List<T> getElements(final Collection<T> collection, int howMany) {
        final int SIZE = collection.size();
        checkArgument(howMany <= SIZE, "howMany must be <= collection size");
        List<T> resultList = new ArrayList<>(howMany);
        List<T> copy = new ArrayList<>(collection);
        Set<Integer> indexes = new HashSet<>(howMany);
        while (resultList.size() < howMany) {
            int index = getInteger(0, SIZE - 1);
            if (!indexes.contains(index)) {
                resultList.add(copy.get(index));
                indexes.add(index);
            }
        }
        return resultList;
    }

    /**
     * Get a random element from an array.
     *
     * @param array The array to select an element from. Must have at least one element.
     * @return One of the elements.
     * @throws IllegalArgumentException if array has zero elements.
     */
    @SafeVarargs
    public final <T> T getElement(final T... array) {
        int maxIndex = array.length - 1;
        int index = getInteger(0, maxIndex);
        return array[index];
    }

    /**
     * Creates random strings of the specified length, with characters in the specified range.
     *
     * @param length  Length of the string to generate.
     * @param minChar the minimum character to include
     * @param maxChar the maximum character to include
     * @return random string
     */
    public String getString(final int length, final int minChar, final int maxChar) {
        StringBuilder builder = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int charNumber = getInteger(minChar, maxChar);
            builder.append((char) charNumber);
        }
        return builder.toString();
    }

    /**
     * Generates a random string of random length.
     *
     * @param minLength The minimum length of string that should be generated.
     * @param maxLength The maximum length of string that should be generated.
     * @param minChar   the minimum char to include
     * @param maxChar   the maximum char to include
     * @return a string of random length
     */
    public String getString(final int minLength, final int maxLength, final int minChar, final int maxChar) {
        int length = getInteger(minLength, maxLength);
        return getString(length, minChar, maxChar);
    }

    /**
     * Generate a string of random characters separated into words, the words separated into lines. Lines are
     * separated by the system line separator.
     *
     * @param minLength     the minimum length, in characters, of the entire paragraph.
     * @param maxLength     the maximum length, in characters, of the entire paragraph.
     * @param maxLineLength the maximum length of any particular line, NOT including new line characters.
     * @param maxWordLength the maximum length of any particular word.
     * @param minChar       the minimum char to include
     * @param maxChar       the maximum char to include
     * @return a random paragraph
     */
    public String getParagraph(final int minLength, final int maxLength,
                               final int maxLineLength, final int maxWordLength, final char minChar, final char maxChar) {
        checkArgument(maxLength > 0 && maxLineLength > 0 && maxWordLength > 0, "max length args must be greater than 0");
        checkArgument(minLength <= maxLength, "min cannot be greater than max");
        checkArgument(maxLineLength <= maxLength, "max line length > max paragraph length");
        checkArgument(maxWordLength <= maxLineLength, "max word length > max line length");

        /* We will try to build a paragraph of about this length */
        final int ACTUAL_PARAGRAPH_LENGTH = getInteger(minLength, maxLength);
        final String LINE_SEPARATOR = System.getProperty("line.separator");
        final char WORD_SEPARATOR = ' ';

        StringBuilder paragraph = new StringBuilder(ACTUAL_PARAGRAPH_LENGTH + maxLineLength);

        while (paragraph.length() < ACTUAL_PARAGRAPH_LENGTH) {

            // Generate one line.
            StringBuilder line = new StringBuilder(maxLineLength);
            while (line.length() < maxLineLength) {
                String word = getString(1, maxWordLength, minChar, maxChar);
                line.append(word);
                line.append(WORD_SEPARATOR);
            }
            int deleteChars = line.length() - maxLineLength;
            if (deleteChars > 0) {
                line.delete(line.length() - deleteChars, line.length());
            }
            paragraph.append(line);
            paragraph.append(LINE_SEPARATOR);
        }
        if (paragraph.length() > ACTUAL_PARAGRAPH_LENGTH) {
            paragraph.delete(ACTUAL_PARAGRAPH_LENGTH, paragraph.length());
        }
        return paragraph.toString();
    }

    /**
     * Return the input string each character case randomly changed.
     */
    public String mixCase(String string) {
        StringBuilder b = new StringBuilder(string.length());
        for (char nextChar : string.toCharArray()) {
            if (getBoolean()) {
                b.append(Character.toUpperCase(nextChar));
            } else {
                b.append(Character.toLowerCase(nextChar));
            }
        }
        return b.toString();
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // methods to shuffle primitive arrays.
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public void shuffle(byte[] array) {
        int index;
        byte temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(short[] array) {
        int index;
        short temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(char[] array) {
        int index;
        char temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(int[] array) {
        int index;
        int temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(long[] array) {
        int index;
        long temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(double[] array) {
        int index;
        double temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

    public void shuffle(float[] array) {
        int index;
        float temp;
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }

}
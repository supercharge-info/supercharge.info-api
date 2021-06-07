package com.redshiftsoft.util;

import org.junit.jupiter.api.Test;

import java.text.NumberFormat;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

public class RandomUtils_UT {

    private RandomUtils randomUtils = RandomUtils.fast();


    /**
     * The random function should not fail if the difference between min and max is larger than the max number supported by
     * the type of min and max.
     */
    @Test
    public void get_Byte_Integer_Long_Float_Double_LargeRanges() {
        /* Byte */
        byte randomNegB = randomUtils.getByte(Byte.MIN_VALUE, -1);
        byte randomPosB = randomUtils.getByte(1, Byte.MAX_VALUE);
        assertTrue(randomNegB < 0);
        assertTrue(randomPosB > 0);

        /* Integer */
        int randomNeg = randomUtils.getInteger(Integer.MIN_VALUE, -1);
        int randomPos = randomUtils.getInteger(1, Integer.MAX_VALUE);
        assertTrue(randomNeg < 0);
        assertTrue(randomPos > 0);

        /* long */
        long randomNegL = randomUtils.getLong(Long.MIN_VALUE, -2);
        long randomPosL = randomUtils.getLong(1, Long.MAX_VALUE);
        assertTrue(randomNegL < 0);
        assertTrue(randomPosL > 0);

        /* Float */
        float randomNegF = randomUtils.getFloat(-1 * Float.MAX_VALUE, (float) -1.0);
        float randomPosF = randomUtils.getFloat((float) 1.0, Float.MAX_VALUE);
        assertTrue(randomNegF < 0);
        assertTrue(randomPosF > 0);

        /* Double */
        double randomNegD = randomUtils.getDouble(-1 * Double.MAX_VALUE, -1.0);
        double randomPosD = randomUtils.getDouble(1.0, Double.MAX_VALUE);
        assertTrue(randomNegD < 0);
        assertTrue(randomPosD > 0);

    }

    @Test
    public void get_Byte_Integer_Long_Float_Double_SmallRanges() {
        /* Byte */
        byte randomB1 = randomUtils.getByte(0, 0);
        byte randomB2 = randomUtils.getByte(-100, -100);
        assertEquals(randomB1, 0);
        assertEquals(randomB2, -100);

        /* Integer */
        int random1 = randomUtils.getInteger(0, 0);
        int random2 = randomUtils.getInteger(-100, -100);
        assertEquals(random1, 0);
        assertEquals(random2, -100);

        /* long */
        long random1L = randomUtils.getLong(0, 0);
        long random2L = randomUtils.getLong(100, 100);
        assertEquals(random1L, 0);
        assertEquals(random2L, 100);

        /* Float */
        float random = randomUtils.getFloat(Float.MAX_VALUE, Float.MAX_VALUE);
        assertEquals(random, Float.MAX_VALUE, .000001);

        /* Double */
        double randomNegD = randomUtils.getDouble(10.0, 10.0);
        assertEquals(randomNegD, 10.0, .000001);

    }

    @Test
    public void get_Byte_Integer_Long_Float_Double() {
        byte b = randomUtils.getByte();
        int i = randomUtils.getInteger();
        long l = randomUtils.getLong();
        float f = randomUtils.getFloat();
        double d = randomUtils.getDouble();
    }

    /**
     * Test setting the minimum and maximum length constraints.
     */
    @Test
    public void get_Byte_Integer_Long_Float_Double_Constraints() {
        final int MAX_INDEX = 127;

        /* Byte */
        for (int max = -1 * MAX_INDEX; max < MAX_INDEX; max++) {
            for (int min = -128; min < max; min++) {
                byte result = randomUtils.getByte(min, max);
                assertTrue(result >= min);
                assertTrue(result <= max);
            }
        }

        /* Integer */
        for (int max = -1 * MAX_INDEX; max < MAX_INDEX; max++) {
            for (int min = -1000; min < max; min++) {
                int result = randomUtils.getInteger(min, max);
                assertTrue(result >= min);
                assertTrue(result <= max);
            }
        }

        /* Long */
        for (int max = -1 * MAX_INDEX; max < MAX_INDEX; max++) {
            for (int min = -1000; min < max; min++) {
                long result = randomUtils.getLong(min, max);
                assertTrue(result >= min);
                assertTrue(result <= max);
            }
        }

        /* Float */
        for (int max = -1 * MAX_INDEX; max < MAX_INDEX; max++) {
            for (int min = -1000; min < max; min++) {
                float result = randomUtils.getFloat(min, max);
                assertTrue(result >= min);
                assertTrue(result <= max);
            }
        }

        /* Double */
        for (int max = -1 * MAX_INDEX; max < MAX_INDEX; max++) {
            for (int min = -1000; min < max; min++) {
                double result = randomUtils.getDouble(min, max);
                assertTrue(result >= min);
                assertTrue(result <= max);
            }
        }
    }

    @Test
    public void getDoubleList() {
        double min = randomUtils.getDouble(-1000, 1000);
        double max = randomUtils.getDouble(min, 2000);
        int howMany = randomUtils.getInteger(1, 1_000_000);
        List<Double> list = randomUtils.getDoubleList(min, max, howMany);
        assertEquals(howMany, list.size());
        for (Double d : list) {
            assertTrue(d >= min && d <= max);
        }
    }

    @Test
    public void getFloatList() {
        float min = randomUtils.getFloat(-1000, 1000);
        float max = randomUtils.getFloat(min, 2000);
        int howMany = randomUtils.getInteger(1, 1_000_000);
        List<Float> list = randomUtils.getFloatList(min, max, howMany);
        assertEquals(howMany, list.size());
        for (Float f : list) {
            assertTrue(f >= min && f <= max);
        }
    }


    @Test
    public void getLong_OnePossibility() {
        assertEquals(0, randomUtils.getLong(0, 0));

        assertEquals(42, randomUtils.getLong(42, 42));
        assertEquals(-42, randomUtils.getLong(-42, -42));

        assertEquals(42_000_000_000L, randomUtils.getLong(42_000_000_000L, 42_000_000_000L));
        assertEquals(-42_000_000_000L, randomUtils.getLong(-42_000_000_000L, -42_000_000_000L));
    }

    @Test
    public void getLong_ExceptionOnOverflow() {
        boolean b1 = false, b2 = false, b3 = false, b4 = false;
        try {
            randomUtils.getLong(Long.MIN_VALUE, -1);
        } catch (IllegalArgumentException e) {
            b1 = true;
        }
        try {
            randomUtils.getLong(Long.MIN_VALUE, Long.MAX_VALUE);
        } catch (IllegalArgumentException e) {
            b2 = true;
        }
        try {
            randomUtils.getLong(Long.MIN_VALUE, Long.MAX_VALUE - 1);
        } catch (IllegalArgumentException e) {
            b3 = true;
        }
        try {
            randomUtils.getLong(-1, Long.MAX_VALUE);
        } catch (IllegalArgumentException e) {
            b4 = true;
        }
        assertTrue(b1 && b2 && b3 && b4);
    }

    @Test
    public void getInteger() {
        int r = randomUtils.getInteger();
    }

    @Test
    public void getInteger_OnePossibility() {
        assertEquals(0, randomUtils.getInteger(0, 0));

        assertEquals(42, randomUtils.getInteger(42, 42));
        assertEquals(-42, randomUtils.getInteger(-42, -42));
    }

    /**
     * Verify that when the magnitude of the integer range is greater than Integer.MAX_VALUE we still return both positive
     * an negative results.
     */
    @Test
    public void getInteger_MaxIntegerRange() {

        boolean pos = false, neg = false;
        for (int i = 0; i < 15; i++) {
            int anyInt = randomUtils.getInteger(Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (anyInt < 0) {
                neg = true;
            }
            if (anyInt > 0) {
                pos = true;
            }
        }
        assertTrue(neg && pos);
    }

    @Test
    public void getInteger_IllegalArg() {
        assertThrows(IllegalArgumentException.class, () -> {
            randomUtils.getInteger(50, 20);
        });
    }

    @Test
    public void getIntegerBug() {
        // There was a bug for this range at one point.
        int i = randomUtils.getInteger(Integer.MIN_VALUE, -1);
        assertTrue(i >= Integer.MIN_VALUE && i <= -1);
    }

    @Test
    public void getBoolean_UniformDistribution() {
        int trueCount = 0;
        int falseCount = 0;
        for (int i = 0; i < 1000; i++) {
            if (randomUtils.getBoolean(.5)) {
                trueCount++;
            } else {
                falseCount++;
            }
        }
        assertTrue(trueCount > 350);
        assertTrue(falseCount > 350);
    }

    @Test
    public void getBoolean_WeightedDistribution() {
        int trueCount = 0;
        int falseCount = 0;
        for (int i = 0; i < 1000; i++) {
            if (randomUtils.getBoolean(.95)) {
                trueCount++;
            } else {
                falseCount++;
            }
        }
        assertTrue(trueCount > 700);
        assertTrue(falseCount > 1);
    }

    @Test
    public void getByte() {
        byte count = randomUtils.getByte();
    }

    @Test
    public void getBytes() {
        int count = randomUtils.getInteger(1, 1024);
        byte[] bytes = randomUtils.getBytes(count);
        assertTrue(bytes.length == count);
    }

    /**
     * Test that we get an even distribution of integers/longs. At one point there was a bug causing the integers at either
     * end of the range to be returned less often than all others.
     */
    @Test
    public void getInteger_getLong_UniformDistribution() {
        final int SIZE = 10;
        final int ITERATIONS = 150 * 1000;
        final double TOLERANCE = .03;
        final int EXPECTED_COUNT = ITERATIONS / SIZE;

        int[] integers = new int[SIZE];
        int[] longs = new int[SIZE];

        for (int i = 0; i < ITERATIONS; i++) {
            int r1 = randomUtils.getInteger(0, 9);
            int r2 = (int) randomUtils.getLong(0, 9);
            integers[r1]++;
            longs[r2]++;
        }
        /* ASSERT: integers */
        for (int count : integers) {
            assertTrue(count > (EXPECTED_COUNT - EXPECTED_COUNT * TOLERANCE));
            assertTrue(count < (EXPECTED_COUNT + EXPECTED_COUNT * TOLERANCE));
        }
        /* ASSERT: longs */
        for (int count : longs) {
            assertTrue(count > (EXPECTED_COUNT - EXPECTED_COUNT * TOLERANCE));
            assertTrue(count < (EXPECTED_COUNT + EXPECTED_COUNT * TOLERANCE));
        }
    }

    // ---------------------------------------------------------------------------------------------------
    // Random list of integer/long
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getLongList() {
        List<Long> randLongs = randomUtils.getLongList(10, 20, 100);
        assertEquals(100, randLongs.size());
        for (Long l : randLongs) {
            assertTrue(l >= 10 && l <= 20);
        }
        assertEquals(0, randomUtils.getLongList(10, 20, 0).size());
    }


    @Test
    public void getIntegerList() {
        List<Integer> randInts = randomUtils.getIntegerList(-20, 10, 100);
        assertEquals(100, randInts.size());
        for (Integer l : randInts) {
            assertTrue(l >= -20 && l <= 10);
        }
        assertEquals(0, randomUtils.getIntegerList(10, 20, 0).size());
    }


    // ---------------------------------------------------------------------------------------------------
    // List Element
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getElement_List() {
        final int SIZE = 5;
        List<String> list = new ArrayList<>();
        for (int i = 0; i < SIZE; i++) {
            list.add(Integer.toString(i));
        }

        Set<String> foundSet = new HashSet<>();

        for (int i = 0; i < SIZE * SIZE * SIZE; i++) {
            String element = randomUtils.getElement(list);
            foundSet.add(element);
        }

        for (int i = 0; i < SIZE; i++) {
            assertTrue(foundSet.contains(Integer.toString(i)));
        }

    }

    @Test
    public void getElement_List_WithOneElement() {
        List<String> list = new ArrayList<>();
        list.add("monkey");
        String element = randomUtils.getElement(list);
        assertEquals("monkey", element);
    }

    @Test
    public void getElement_List_WithZeroElements() {
        assertThrows(IllegalArgumentException.class, () -> {
            List<String> list = new ArrayList<>();
            randomUtils.getElement(list);
        });
    }

    // ---------------------------------------------------------------------------------------------------
    // Collection Element
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getElement_Collection() {
        final int SIZE = 50;
        Collection<String> list = new ArrayList<>();
        for (int i = 0; i < SIZE; i++) {
            list.add(Integer.toString(i));
        }

        Set<String> foundSet = new HashSet<>();

        for (int i = 0; i < SIZE * SIZE; i++) {
            String element = randomUtils.getElement(list);
            foundSet.add(element);
        }

        for (int i = 0; i < SIZE; i++) {
            assertTrue(foundSet.contains(Integer.toString(i)));
        }

    }

    @Test
    public void getElement_Collection_WithOneElement() {
        Collection<String> list = new ArrayList<>();
        list.add("monkey");
        String element = randomUtils.getElement(list);
        assertEquals("monkey", element);
    }

    @Test
    public void getElement_Collection_WithZeroElements() {
        assertThrows(IllegalArgumentException.class, () -> {
            Collection<String> list = new ArrayList<>();
            randomUtils.getElement(list);
        });
    }

    // ---------------------------------------------------------------------------------------------------
    // Collection elements
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getElements() {
        List<String> result = randomUtils.getElements(Arrays.asList("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n"), 3);
        assertEquals(3, result.size());
        assertEquals(3, new HashSet<>(result).size());
    }

    @Test
    public void getElements_speed() {
        final int SIZE_INPUT = 10 * 1000;
        final int SIZE_OUTPUT = SIZE_INPUT - 10;
        List<Long> inputList = new ArrayList<>(SIZE_INPUT);
        for (int i = 0; i < SIZE_INPUT; i++) {
            inputList.add(randomUtils.getLong(2L, Long.MAX_VALUE));
        }

        long start = System.currentTimeMillis();
        List<Long> result = randomUtils.getElements(inputList, SIZE_OUTPUT);
        long elapsed = System.currentTimeMillis() - start;
        assertTrue(elapsed < 1000L);
        assertEquals(SIZE_OUTPUT, result.size());
        assertEquals(SIZE_OUTPUT, new HashSet<>(result).size());
    }

    @Test
    public void getElements_howManyEqualsCollectionSize() {
        List<String> result = randomUtils.getElements(Arrays.asList("a", "b"), 2);
        assertEquals(2, result.size());
        assertTrue(result.contains("a"));
        assertTrue(result.contains("b"));
    }

    @Test
    public void getElements_howManyTooLarge() {
        assertThrows(IllegalArgumentException.class, () -> {
            randomUtils.getElements(Arrays.asList("a", "b"), 3);
        });
    }

    @Test
    public void getElements_oneElement() {
        List<String> result = randomUtils.getElements(Arrays.asList("a"), 1);
        assertEquals(1, result.size());
        assertEquals("a", result.get(0));
    }

    @Test
    public void getElements_zeroElements() {
        List<String> result = randomUtils.getElements(new ArrayList<>(), 0);
        assertEquals(0, result.size());
    }

    // ---------------------------------------------------------------------------------------------------
    // Array elements
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getElement_Array() {
        final int SIZE = 5;
        String[] array = new String[SIZE];
        for (int i = 0; i < SIZE; i++) {
            array[i] = Integer.toString(i);
        }

        Set<String> foundSet = new HashSet<>();

        for (int i = 0; i < SIZE * SIZE * SIZE; i++) {
            String element = randomUtils.getElement(array);
            foundSet.add(element);
        }

        for (int i = 0; i < SIZE; i++) {
            assertTrue(foundSet.contains(Integer.toString(i)));
        }

    }

    @Test
    public void getElement_Array_WithOneElement() {
        String[] array = new String[1];
        array[0] = "monkey";
        String element = randomUtils.getElement(array);
        assertEquals("monkey", element);
    }

    @Test
    public void getElement_Array_WithZeroElements() {
        assertThrows(IllegalArgumentException.class, () -> {
            String[] array = new String[0];
            randomUtils.getElement(array);
        });
    }

    /**
     * Pick five elements at random from the set {A,B,C,D,E,F,G,H,I,J}. What are the chance that you pick the first five?
     * <p/> The possible combinations are: 10!/ ( 5! ( 10 - 5 )! ) = 252 <p/> So the probability = 1/252 = .396%
     */
    @Test
    public void getElement_InApplication() {

        final int ITERATIONS = 50000;
        final int SET_SIZE = 10;
        final int SELECTION_SIZE = 5;

        int count = 0;

        /* Initial population of set */
        LinkedList<String> fullSet = new LinkedList<>();
        for (char c = 'A'; c < ('A' + SET_SIZE); c++) {
            fullSet.add("" + c);
        }

        for (int i = 0; i < ITERATIONS; i++) {

            List<String> list = new LinkedList<>(fullSet);

            for (int j = 1; j <= SELECTION_SIZE; j++) {
                String sel = randomUtils.getElement(list);
                list.remove(sel);
            }

            boolean isSuccess = true;
            for (int j = 0; j < SELECTION_SIZE; j++) {
                String checkFor = fullSet.get(j);
                if (list.contains(checkFor)) {
                    isSuccess = false;
                    break;
                }
            }
            if (isSuccess) {
                count++;
            }
        }

        NumberFormat nf = NumberFormat.getPercentInstance();
        nf.setMinimumFractionDigits(3);
        double actual = (double) count / ITERATIONS;
        double expected = (fact(SELECTION_SIZE) * fact(SET_SIZE - SELECTION_SIZE)) / fact(SET_SIZE);
        double diff = Math.abs(actual - expected);
        System.out.println("count: " + count + " of: " + ITERATIONS + " percent: " + nf.format(actual)
                + " expected: " + nf.format(expected) + " diff: " + diff);

        assertTrue(diff < .001);
    }

    public double fact(final long numb) {
        if (numb == 0) {
            return 1d;
        }
        long result = numb;
        for (long i = numb - 1; i > 1; i--) {
            result = result * i;
        }
        return result;
    }

    // ---------------------------------------------------------------------------------------------------
    // Strings
    // ---------------------------------------------------------------------------------------------------

    @Test
    public void getString() {
        String s = randomUtils.getString(0, 'a', 'z');
        assertNotNull(s);
        assertTrue(s.length() == 0);
    }

    @Test
    public void getString_randomLength() {
        Set<Integer> set = new HashSet<>();
        for (int i = 0; i < 100; i++) {
            String s = randomUtils.getString(3, 100, 'a', 'b');
            assertTrue(s != null);
            assertTrue(s.length() >= 3);
            assertTrue(s.length() <= 100);
            set.add(s.length());
        }
        assertTrue(set.size() > 20);
    }

    @Test
    public void mixCase() {
        for (int times = 0; times < 1_000; times++) {
            String input = randomUtils.getString(25, 'A', 'z');
            String output = randomUtils.mixCase(input);
            assertEquals(input.length(), output.length());
            assertEquals(input.toLowerCase(), output.toLowerCase());
            assertNotEquals(input, output);
        }
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // methods to shuffle primitive arrays.
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    @Test
    public void shuffle_char() {
        // given
        char[] in = new char[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n'};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertEquals("kjnegbdcmlfahi", new String(in));
    }

    @Test
    public void shuffle_int() {
        // given
        int[] in = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new int[]{5, 2, 6, 4, 8, 3, 7, 1, 9}, in);
    }

    @Test
    public void shuffle_short() {
        // given
        short[] in = new short[]{1, 2, 3, 4, 5, 6, 7, 8, 9};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new short[]{5, 2, 6, 4, 8, 3, 7, 1, 9}, in);
    }

    @Test
    public void shuffle_byte() {
        // given
        byte[] in = new byte[]{1, 2, 3, 4, 5, 6, 7, 8, 9};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new byte[]{5, 2, 6, 4, 8, 3, 7, 1, 9}, in);
    }

    @Test
    public void shuffle_long() {
        // given
        long[] in = new long[]{1, 2, 3, 4};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new long[]{4, 2, 1, 3}, in);
    }

    @Test
    public void shuffle_double() {
        // given
        double[] in = new double[]{1.1, 2.2, 3.3, 4.4};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new double[]{4.4, 2.2, 1.1, 3.3}, in, 1e-9);
    }

    @Test
    public void shuffle_float() {
        // given
        float[] in = new float[]{1.1f, 2.2f, 3.3f, 4.4f};

        // when
        new RandomUtils(new Random(42)).shuffle(in);

        // when
        assertArrayEquals(new float[]{4.4f, 2.2f, 1.1f, 3.3f}, in, 1e-6f);
    }

}
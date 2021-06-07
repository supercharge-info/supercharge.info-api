package com.redshiftsoft.tesla.web.mvc.site;

import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.Comparator;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class SiteDTOComparatorFactory_UT {

    @Test
    public void nullsLast() {

        Comparator<LocalDate> c = Comparator.nullsLast(Comparator.comparing(x -> x));

        LocalDate x = LocalDate.of(2018, 10, 14);

        assertEquals(-1, c.compare(x, null));
        assertEquals(1, c.compare(null, x));
    }

}

package com.redshiftsoft.element;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class Attribute_UT {

    @Test
    public void constructor_nameNotEmpty() {
        assertThrows(IllegalArgumentException.class, () -> {
            new Attribute("", "value");
        });
    }

    @Test
    public void constructor_nameNotNull() {
        assertThrows(IllegalArgumentException.class, () -> {
            new Attribute(null, "value");
        });
    }

    @Test
    public void toString_Works() {
        Attribute attribute = new Attribute("name", "value");
        assertEquals("name='value'", attribute.toString());
    }

    @Test
    public void toString_XMLEscapeAttributeValues() {

        Attribute attribute = new Attribute("name", "AMP:& GREATER:> LESS:<");

        assertEquals("name='AMP:&amp; GREATER:&gt; LESS:&lt;'", attribute.toString());
    }

}

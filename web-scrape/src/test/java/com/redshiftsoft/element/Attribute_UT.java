package com.redshiftsoft.element;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class Attribute_UT {

	@Test(expected = IllegalArgumentException.class)
	public void constructor_nameNotEmpty() {
		new Attribute("", "value");
	}

	@Test(expected = IllegalArgumentException.class)
	public void constructor_nameNotNull() {
		new Attribute(null, "value");
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

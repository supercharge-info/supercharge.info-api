package com.redshiftsoft.element;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class Div_UT {

	@Test
	public void testToString() {
		Div div = new Div();
		div.addAttribute("title", "Project & is a problem <b>bold</b>");
		assertEquals("<div title='Project &amp; is a problem &lt;b&gt;bold&lt;/b&gt;'/>", div.toString());
	}


}

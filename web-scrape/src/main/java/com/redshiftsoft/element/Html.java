package com.redshiftsoft.element;

public class Html extends Element {

	public static final String ATTR_XMLNS = "xmlns";

	public Html() {
		super(HTML);
	}

	public Html(final Element... children) {
		super(HTML);
		add(children);
	}
}

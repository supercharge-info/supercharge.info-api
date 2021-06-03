package com.redshiftsoft.element;

public class Span extends Element {

	public Span() {
		super(SPAN);
	}

	public Span(final String cdata) {
		super(SPAN);
		add(new CData(cdata));
	}

	public void add(String cdata) {
		add(new CData(cdata));
	}
}

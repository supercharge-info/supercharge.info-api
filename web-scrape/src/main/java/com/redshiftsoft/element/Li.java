package com.redshiftsoft.element;

public class Li extends Element {

	public Li() {
		super(LI);
	}

	public Li(final Element... children) {
		super(LI);
		add(children);
	}

	public Li(final String cdata) {
		super(LI);
		add(new CData(cdata));
	}
}

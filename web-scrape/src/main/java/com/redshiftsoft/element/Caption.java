package com.redshiftsoft.element;

public class Caption extends Element {

	public Caption() {
		super(CAPTION);
	}

	public Caption(final String cdata) {
		super(CAPTION);
		add(new CData(cdata));
	}
}

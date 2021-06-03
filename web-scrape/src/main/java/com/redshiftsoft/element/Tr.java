package com.redshiftsoft.element;

public class Tr extends Element {

	public Tr() {
		super(TR);
	}

	public Tr(final Element... children) {
		super(TR);
		add(children);
	}
}

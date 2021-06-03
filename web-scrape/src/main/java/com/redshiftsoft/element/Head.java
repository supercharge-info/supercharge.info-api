package com.redshiftsoft.element;

public class Head extends Element {

	public Head() {
		super(HEAD);
	}

	public Head(final Element... children) {
		super(HEAD);
		add(children);
	}

}

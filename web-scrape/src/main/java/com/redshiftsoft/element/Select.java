package com.redshiftsoft.element;

public class Select extends Element {

	public static final String ATTR_NAME = "name";

	public Select() {
		super(SELECT);
	}

	public Select(String name) {
		this();
		addAttribute(ATTR_NAME, name);
	}
}

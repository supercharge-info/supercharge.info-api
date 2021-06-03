package com.redshiftsoft.element;

public class Table extends Element {

	public Table() {
		super(TABLE);
	}

	public Table(final Element... children) {
		super(TABLE);
		add(children);
	}

	public Table(final String cssClass) {
		super(TABLE);
		addClass(cssClass);
	}

	public Table(final String cssClass, final String style) {
		super(TABLE);
		addClass(cssClass);
		setStyle(style);
	}

}

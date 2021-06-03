package com.redshiftsoft.element;

public class Option extends Element {

	public static final String ATTR_VALUE = "value";
	public static final String ATTR_SELECTED = "selected";

	public Option() {
		super(OPTION);
	}

	public Option(String value, String displayValue) {
		this();
		addAttribute(ATTR_VALUE, value);
		add(new CData(displayValue));
	}

	public Option(Number value, String displayValue) {
		this(value.toString(), displayValue);
	}

	public Option(String value, String displayValue, boolean selected) {
		this();
		addAttribute(ATTR_VALUE, value);
		if (selected) {
			this.addAttribute(new Attribute(ATTR_SELECTED, ATTR_SELECTED));
		}
		add(new CData(displayValue));
	}

	public Option(Number value, String displayValue, boolean selected) {
		this(value.toString(), displayValue, selected);
	}
}

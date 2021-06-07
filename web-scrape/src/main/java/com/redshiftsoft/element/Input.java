package com.redshiftsoft.element;

public class Input extends Element {

    public static final String TYPE_CHECKBOX = "checkbox";
    public static final String TYPE_RADIO = "radio";
    public static final String TYPE_SUBMIT = "submit";
    public static final String TYPE_RESET = "reset";
    public static final String TYPE_FILE = "file";
    public static final String TYPE_HIDDEN = "hidden";
    public static final String TYPE_IMAGE = "image";
    public static final String TYPE_TEXT = "text";
    public static final String TYPE_PASSWORD = "password";
    public static final String TYPE_BUTTON = "button";

    public static final String ATTR_TYPE = "type";
    public static final String ATTR_NAME = "name";
    public static final String ATTR_VALUE = "value";

    public Input(final String type) {
        super(INPUT);
        addAttribute(ATTR_TYPE, type);
    }

    public Input(final String type, final String name) {
        super(INPUT);
        addAttribute(ATTR_TYPE, type);
        addAttribute(ATTR_NAME, name);
    }

    public Input(final String type, final String name, final String value) {
        super(INPUT);
        addAttribute(ATTR_TYPE, type);
        addAttribute(ATTR_NAME, name);
        addAttribute(ATTR_VALUE, value);
    }
}

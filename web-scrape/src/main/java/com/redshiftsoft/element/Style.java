package com.redshiftsoft.element;

public class Style extends Element {

    /**
     * Required attribute
     */
    public static final String ATTR_TYPE = "type";

    /**
     * Default value for the type attribute
     */
    public static final String ATTR_TYPE_DEFAULT = "text/css";

    public Style() {
        super(STYLE);
        addAttribute(ATTR_TYPE, ATTR_TYPE_DEFAULT);
    }

    public Style(final String style) {
        super(STYLE);
        addAttribute(ATTR_TYPE, ATTR_TYPE_DEFAULT);
        add(new CData(style));
    }
}

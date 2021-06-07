package com.redshiftsoft.element;

public class Form extends Element {

    public static final String METHOD_GET = "get";
    public static final String METHOD_POST = "post";

    public static final String ATTR_METHOD = "method";
    public static final String ATTR_ACTION = "action";

    public Form() {
        super(FORM);
    }

    /**
     * Construct a form with the specified action, and a POST method
     */
    public Form(final String action) {
        super(FORM);
        addAttribute(ATTR_ACTION, action);
        addAttribute(ATTR_METHOD, METHOD_POST);
    }

    public Form(final String method, final String action) {
        super(FORM);
        addAttribute(ATTR_ACTION, action);
        addAttribute(ATTR_METHOD, method);
    }

    public Form(final Element... children) {
        super(FORM);
        add(children);
    }
}

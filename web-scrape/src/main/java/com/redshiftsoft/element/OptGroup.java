package com.redshiftsoft.element;

public class OptGroup extends Element {

    private static final String ATTR_LABEL = "label";

    public OptGroup() {
        super(OPT_GROUP);
    }

    public OptGroup(String label) {
        this();
        addAttribute(ATTR_LABEL, label);
    }
}

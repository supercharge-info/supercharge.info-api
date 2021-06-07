package com.redshiftsoft.element;

public class Body extends Element {

    public Body() {
        super(BODY);
    }

    public Body(final Element... children) {
        super(BODY);
        add(children);
    }
}

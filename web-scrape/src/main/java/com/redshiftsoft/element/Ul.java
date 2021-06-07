package com.redshiftsoft.element;

public class Ul extends Element {

    public Ul() {
        super(UL);
    }

    public Ul(final Element... children) {
        super(UL);
        add(children);
    }
}

package com.redshiftsoft.element;

public class Ol extends Element {

    public Ol() {
        super(OL);
    }

    public Ol(final Element... children) {
        super(OL);
        add(children);
    }
}

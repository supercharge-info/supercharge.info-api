package com.redshiftsoft.element;

public class Thead extends Element {

    public Thead() {
        super(THEAD);
    }

    public Thead(final Element... children) {
        super(THEAD);
        add(children);
    }
}

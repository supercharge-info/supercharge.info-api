package com.redshiftsoft.element;

public class Tbody extends Element {

    public Tbody() {
        super(TBODY);
    }

    public Tbody(final Element... children) {
        super(TBODY);
        add(children);
    }
}

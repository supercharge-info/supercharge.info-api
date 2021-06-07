package com.redshiftsoft.element;

public class Colgroup extends Element {

    public Colgroup() {
        super(COLGROUP);
    }

    public Colgroup(final Element... children) {
        super(COLGROUP);
        add(children);
    }
}

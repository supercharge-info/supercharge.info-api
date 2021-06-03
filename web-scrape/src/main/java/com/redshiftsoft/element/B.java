package com.redshiftsoft.element;

public class B extends Element {

    public B() {
        super(B);
    }

    public B(final String cdata) {
        super(B);
        add(new CData(cdata));
    }

    public B(final Element... children) {
        super(B);
        add(children);
    }

}
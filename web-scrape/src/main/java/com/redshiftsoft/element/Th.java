package com.redshiftsoft.element;

public class Th extends Element {

    public Th() {
        super(TH);
    }

    public Th(final Element... children) {
        super(TH);
        add(children);
    }

    public Th(final String cdata) {
        super(TH);
        add(new CData(cdata));
    }

}

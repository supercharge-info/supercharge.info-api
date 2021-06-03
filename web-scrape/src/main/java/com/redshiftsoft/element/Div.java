package com.redshiftsoft.element;

public class Div extends Element {

    /**
     * Constructor: default
     */
    public Div() {
        super(DIV);
    }

    /**
     * Constructor: taking zero or more children elements
     */
    public Div(final Element... children) {
        super(DIV);
        add(children);
    }

    /**
     * Constructor: taking child CDATA
     */
    public Div(final String cdata) {
        super(DIV);
        add(new CData(cdata));
    }

}
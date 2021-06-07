package com.redshiftsoft.element;

/**
 * Heading element: h1, h2, h3, h4, h5, etc.
 */
public class H extends Element {

    public H(int level) {
        super(H + level);
    }

    public H(int level, final Element... children) {
        super(H + level);
        add(children);
    }

    public H(int level, final String cdata) {
        super(H + level);
        add(new CData(cdata));
    }

}

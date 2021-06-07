package com.redshiftsoft.element;

public class Img extends Element {

    public static final String ATTR_SRC = "src";
    public static final String ATTR_ALT = "alt";
    public static final String ATTR_TITLE = "title";

    public Img() {
        super(IMG);
    }

    public Img(final String src, final String alt) {
        super(IMG);
        addAttribute(ATTR_SRC, src);
        addAttribute(ATTR_ALT, alt);
    }

    public Img(final String src, final String alt, final String title) {
        super(IMG);
        addAttribute(ATTR_SRC, src);
        addAttribute(ATTR_ALT, alt);
        addAttribute(ATTR_TITLE, title);
    }

}

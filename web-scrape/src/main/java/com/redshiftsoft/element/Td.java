package com.redshiftsoft.element;

public class Td extends Element {

    public static final String ATTR_COLSPAN = "colspan";
    public static final String ATTR_ROWSPAN = "rowspan";

    public Td() {
        super(TD);
    }

    public Td(final Element... children) {
        super(TD);
        add(children);
    }

    public Td(final String cdata) {
        super(TD);
        add(new CData(cdata));
    }

    public void setColSpan(final int span) {
        this.addAttribute(new Attribute(ATTR_COLSPAN, Integer.toString(span)));
    }

    public void setRowSpan(final int span) {
        this.addAttribute(new Attribute(ATTR_ROWSPAN, Integer.toString(span)));
    }
}

package com.redshiftsoft.element;

public class Title extends Element {

    public Title() {
        super(TITLE);
    }

    public Title(final String cdata) {
        super(TITLE);
        add(new CData(cdata));
    }
}

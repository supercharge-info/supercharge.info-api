package com.redshiftsoft.element;

import com.redshiftsoft.util.StringTools;

public class Col extends Element {

    public static final String ATTR_WIDTH = "width";
    public static final String ATTR_ALIGN = "align";

    public Col() {
        super(COL);
    }

    public Col(final String width) {
        super(COL);
        if (StringTools.isNotEmpty(width)) {
            addAttribute(ATTR_WIDTH, width);
        }
    }

    public Col(final String width, final String align) {
        super(COL);
        if (StringTools.isNotEmpty(width)) {
            addAttribute(ATTR_WIDTH, width);
        }
        if (StringTools.isNotEmpty(align)) {
            addAttribute(ATTR_WIDTH, align);
        }
    }

}

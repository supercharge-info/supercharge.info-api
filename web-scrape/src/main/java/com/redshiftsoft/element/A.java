package com.redshiftsoft.element;

import com.redshiftsoft.util.StringTools;

public class A extends Element {

    public static final String ATTR_TITLE = "title";
    public static final String ATTR_HREF = "href";
    public static final String ATTR_TARGET = "target";
    public static final String ATTR_ONCLICK = "onclick";

    /**
     * Open the linked document in a new window
     */
    public static final String TARGET_BLANK = "_blank";
    /**
     * Open the linked document in the parent frameset
     */
    public static final String TARGET_PARENT = "_parent";
    /**
     * Open the linked document in the same frame as it was clicked (this is default)
     */
    public static final String TARGET_SELF = "_self";
    /**
     * Open the linked document in the full body of the window
     */
    public static final String TARGET_TOP = "_top";

    public A() {
        super(A);
    }

    /**
     * Construct a link with these three characteristics:
     *
     * @param cdata Character data that will be the only child element of the link element.
     * @param href  Value for the attribute with the same name.
     * @param title Value for the attribute with the same name.
     */
    public A(final String cdata, final String href, final String title) {
        super(A);
        add(new CData(cdata));
        if (StringTools.isNotEmpty(title)) {
            this.addAttribute(ATTR_TITLE, title);
        }
        if (StringTools.isNotEmpty(href)) {
            this.addAttribute(ATTR_HREF, href);
        }
    }

    /**
     * Construct a link with these three characteristics:
     *
     * @param element Child element.
     * @param href    Value for the attribute with the same name.
     * @param title   Value for the attribute with the same name.
     */
    public A(final Element element, final String href, final String title) {
        super(A);
        add(element);
        if (StringTools.isNotEmpty(title)) {
            this.addAttribute(ATTR_TITLE, title);
        }
        if (StringTools.isNotEmpty(href)) {
            this.addAttribute(ATTR_HREF, href);
        }
    }

    /**
     * Construct a link with these four attributes:
     *
     * @param element Child element.
     * @param href    Value for the attribute with the same name.
     * @param title   Value for the attribute with the same name.
     * @param target  Value for the attribute with the same name.
     */
    public A(final Element element, final String href, final String title, final String target) {
        super(A);
        add(element);
        if (StringTools.isNotEmpty(title)) {
            this.addAttribute(ATTR_TITLE, title);
        }
        if (StringTools.isNotEmpty(href)) {
            this.addAttribute(ATTR_HREF, href);
        }
        if (StringTools.isNotEmpty(target)) {
            this.addAttribute(ATTR_TARGET, target);
        }
    }

    /**
     * Construct a link with these four attributes:
     *
     * @param cdata Character data that will be the only child element of the link element.
     * @param href    Value for the attribute with the same name.
     * @param title   Value for the attribute with the same name.
     * @param target  Value for the attribute with the same name.
     */
    public A(final String cdata, final String href, final String title, final String target) {
        super(A);
        add(new CData(cdata));
        if (StringTools.isNotEmpty(title)) {
            this.addAttribute(ATTR_TITLE, title);
        }
        if (StringTools.isNotEmpty(href)) {
            this.addAttribute(ATTR_HREF, href);
        }
        if (StringTools.isNotEmpty(target)) {
            this.addAttribute(ATTR_TARGET, target);
        }
    }

    public void setOnClick(final String value) {
        this.addAttribute(new Attribute(ATTR_ONCLICK, value));
    }

}

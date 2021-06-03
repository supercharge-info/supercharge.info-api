package com.redshiftsoft.element;

import kdw.common.string.StringTools;

public class Link extends Element {

	public static final String ATTR_HREF = "href";
	public static final String ATTR_REL = "rel";
	public static final String ATTR_TYPE = "type";

	public Link() {
		super(LINK);
	}

	/**
	 * Construct a link with these three characteristics:
	 *
	 * @param href Value for the attribute with the same name.
	 */
	public Link(final String href) {
		super(LINK);
		if (StringTools.isNotEmpty(href)) {
			this.addAttribute(ATTR_HREF, href);
		}
	}

	/**
	 * Construct a link with these three characteristics:
	 *
	 * @param href Value for the attribute with the same name.
	 * @param rel  Value for the attribute with the same name.
	 */
	public Link(final String href, final String rel) {
		super(LINK);
		if (StringTools.isNotEmpty(href)) {
			this.addAttribute(ATTR_HREF, href);
		}
		if (StringTools.isNotEmpty(rel)) {
			this.addAttribute(ATTR_REL, rel);
		}
	}

	/**
	 * Construct a link with these four attributes:
	 *
	 * @param href Value for the attribute with the same name.
	 * @param rel  Value for the attribute with the same name.
	 * @param type Value for the attribute with the same name.
	 */
	public Link(final String href, final String rel, final String type) {
		super(LINK);
		if (StringTools.isNotEmpty(href)) {
			this.addAttribute(ATTR_HREF, href);
		}
		if (StringTools.isNotEmpty(rel)) {
			this.addAttribute(ATTR_REL, rel);
		}
		if (StringTools.isNotEmpty(type)) {
			this.addAttribute(ATTR_TYPE, type);
		}
	}

}

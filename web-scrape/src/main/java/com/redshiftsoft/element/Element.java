package com.redshiftsoft.element;

import com.redshiftsoft.util.StringTools;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class Element {

	public static final String ATTR_TABINDEX = "tabindex";
	public static final String ATTR_XML_NAMESPACE = "xmlns";

	public static final String A = "a";
	public static final String HTML = "html";
	public static final String TABLE = "table";
	public static final String TR = "tr";
	public static final String TD = "td";
	public static final String TH = "th";
	public static final String HR = "hr";
	public static final String HEAD = "head";
	public static final String TITLE = "title";
	public static final String BODY = "body";
	public static final String FORM = "form";
	public static final String INPUT = "input";
	public static final String STYLE = "style";
	public static final String CAPTION = "caption";
	public static final String DIV = "div";
	public static final String SPAN = "span";
	public static final String COLGROUP = "colgroup";
	public static final String COL = "col";
	public static final String BR = "br";
	public static final String H = "h";
	public static final String UL = "ul";
	public static final String OL = "ol";
	public static final String LI = "li";
	public static final String IMG = "img";
	public static final String B = "b";
	public static final String LINK = "link";
	public static final String SELECT = "select";
	public static final String OPTION = "option";
	public static final String OPT_GROUP = "optgroup";

	// ------------------------------------------------------------------
	// fields
	// ------------------------------------------------------------------

	private final String name;
	private boolean pretty;
	private String style;
	private String id;
	private List<String> classes = new ArrayList<String>();
	private List<Element> children = new ArrayList<Element>();
	private List<Attribute> attributes = new ArrayList<Attribute>();

	// ------------------------------------------------------------------
	// Constructors
	// ------------------------------------------------------------------

	public Element(final String elementName) {
		this.name = elementName;
	}

	// ------------------------------------------------------------------
	// java.lang.Object
	// ------------------------------------------------------------------

	@Override
	public String toString() {
		StringBuilder b = new StringBuilder();

		/* OPEN ELEMENT */
		b.append("<");
		b.append(name);
		if (classes.size() > 0) {
			b.append(" class='");
			b.append(StringTools.toString(classes, " "));
			b.append("'");
		}
		if (StringTools.isNotEmpty(style)) {
			b.append(" style='" + style + "'");
		}
		if (StringTools.isNotEmpty(id)) {
			b.append(" id='" + id + "'");
		}
		for (Attribute attribute : attributes) {
			b.append(" ");
			b.append(attribute.toString());
		}
		/* IF CHILDREN */
		if (children.size() > 0) {
			b.append(">");
			/* CONTENT */
			for (Element e : children) {
				b.append(e.toString());
			}

			/* CLOSE ELEMENT */
			b.append("</" + name + ">");
		}
		/* IF NO CHILDREN */
		else {
			b.append("/>");
		}
		if (pretty) {
			b.append("\n");
		}

		return b.toString();
	}

	// ------------------------------------------------------------------
	// Descendants
	// ------------------------------------------------------------------

	/**
	 * Count the total of this node plus all descendants
	 */
	public final int getDescendantCount() {
		int count = 1;
		for (Element element : children) {
			count = count + element.getDescendantCount();
		}
		return count;
	}

	/**
	 * Get all descendants of this element.
	 */
	public final Collection<Element> getDescendants() {
		return getDescendants(Element.class);
	}

	/**
	 * Get all descendants of this element that are instances of any of the specified class parameters.
	 */
	@SafeVarargs
	public final Collection<Element> getDescendants(Class<? extends Element>... paramClasses) {
		List<Element> descendants = new ArrayList<Element>();
		for (Element child : children) {
			for (Class<? extends Element> cl : paramClasses) {
				if (cl.isAssignableFrom(child.getClass())) {
					descendants.add(child);
				}
				descendants.addAll(child.getDescendants(cl));
			}
		}
		return descendants;
	}

	// ------------------------------------------------------------------
	// getters/setters
	// ------------------------------------------------------------------

	public void setXMLNamespace(final String value) {
		this.addAttribute(new Attribute(ATTR_XML_NAMESPACE, value));
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(final String style) {
		this.style = style;
	}

	/**
	 * Appends the given style parameter onto any existing style attribute value
	 */
	public void appendStyle(final String moreStyle) {
		if (StringTools.isEmpty(style)) {
			this.style = moreStyle;
		} else {
			this.style = this.style + ";" + moreStyle;
		}
	}

	public String getId() {
		return id;
	}

	public Element setId(String id) {
		this.id = id;
		return this;
	}

	public boolean isPretty() {
		return pretty;
	}

	public void setPretty(boolean p) {
		this.pretty = p;
		for (Element e : children) {
			e.setPretty(p);
		}
	}

	// -------------------
	// Attributes
	// -------------------

	public List<Attribute> getAttributes() {
		return attributes;
	}

	public void setAttributes(List<Attribute> attributesIn) {
		this.attributes = (attributesIn != null) ? attributesIn : new ArrayList<Attribute>();
	}

	public void addAttribute(final Attribute... attributeArray) {
		if (attributeArray != null) {
			attributes.addAll(Arrays.asList(attributeArray));
		}
	}

	public void addAttribute(final String name, final String value) {
		attributes.add(new Attribute(name, value));
	}

	public Attribute getAttribute(final String name) {
		for (Attribute attribute : attributes) {
			if (attribute.getName().equals(name)) {
				return attribute;
			}
		}
		return null;
	}

	// -------------------
	// Children
	// -------------------

	public List<Element> getChildren() {
		return children;
	}

	public void setChildren(List<Element> elements) {
		this.children = elements;
	}

	public void addChildren(final List<? extends Element> els) {
		this.children.addAll(els);
	}

	public void add(final Element... newElements) {
		if (newElements != null) {
			children.addAll(Arrays.asList(newElements));
		}
	}

	public void addText(String characterData) {
		add(new CData(characterData));
	}

	// -------------------
	// Classes
	// -------------------

	public List<String> getClasses() {
		return classes;
	}

	public void setClasses(List<String> classes) {
		this.classes = classes;
	}

	public Element addClass(final String... cssClass) {
		if (cssClass != null) {
			classes.addAll(Arrays.asList(cssClass));
		}
		return this;
	}

}

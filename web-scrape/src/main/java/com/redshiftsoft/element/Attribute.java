package com.redshiftsoft.element;

import com.google.common.xml.XmlEscapers;
import com.redshiftsoft.util.StringTools;

public class Attribute {

	private String name;
	private String value;

	// --------------------------------------------------
	//
	// --------------------------------------------------

	public Attribute(final String nameIn, final String valueIn) {
		if (StringTools.isEmpty(nameIn)) {
			throw new IllegalArgumentException("attribute names cannot be empty");
		}
		this.name = nameIn;
		this.value = valueIn;
	}

	@SuppressWarnings("UnstableApiUsage")
	@Override
	public String toString() {
		StringBuilder b = new StringBuilder();
		b.append(name);
		b.append("='");
		b.append(XmlEscapers.xmlAttributeEscaper().escape(value));
		b.append("'");
		return b.toString();
	}

	@Override
	public boolean equals(Object object) {
		if (!(object instanceof Attribute)) {
			return false;
		}
		if (object == this) {
			return true;
		}
		Attribute that = (Attribute) object;
		return StringTools.equals(name, that.getName()) && StringTools.equals(value, that.getValue());
	}

	@Override
	public int hashCode() {
		return (name != null ? name.hashCode() : 0) | (value != null ? value.hashCode() : 0);
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}

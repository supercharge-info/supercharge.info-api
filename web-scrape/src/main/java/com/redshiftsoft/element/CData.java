package com.redshiftsoft.element;

/**
 * Represents character data
 */
public class CData extends Element {

    private final String content;

    public CData(final String contentIn) {
        super("");
        this.content = contentIn;
    }

    /**
     * Returns the content of CData section, or empty string if content is null.
     */
    @Override
    public String toString() {
        return content == null ? "" : content;
    }

    @Override
    public Element setId(final String id) {
        throw new UnsupportedOperationException("can not set ID on CData");
    }
}

package com.redshiftsoft.element;

import com.redshiftsoft.util.RandomUtils;
import org.junit.jupiter.api.Test;

import java.util.Collection;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

public class Element_UT {

    @Test
    public void setText() {
        Div div = new Div();
        div.addText("AAA_");
        div.addText("BBB_");
        div.addText("CCC_");
        assertEquals("<div>AAA_BBB_CCC_</div>", div.toString());
    }

    @Test
    public void setXMLNamespace() {
        Div div = new Div();
        div.setXMLNamespace("some-namespace-value");
        assertEquals("<div xmlns='some-namespace-value'/>", div.toString());
    }

    @Test
    public void getId() {
        Div div = new Div();
        div.setId("testID");
        assertEquals("testID", div.getId());
    }

    @Test
    public void setPretty() {
        boolean pretty = RandomUtils.fast().getBoolean(.5d);
        Div div = new Div();
        div.setPretty(pretty);
        assertEquals(pretty, div.isPretty());
    }

    @Test
    public void getDescendants() {

        Div child1 = new Div();
        Div child2 = new Div();
        Table child3 = new Table();
        Span child4 = new Span();

        child2.add(new Div(new Table(new Tr(new Td(), new Td()))));

        child3.add(new Tr(new Th(), new Th()), new Tr(new Td(), new Td()));

        Div root = new Div();
        root.add(child1, child2, child3, child4);

        // ----------------------
        // Assert
        // ----------------------

        // Total size
        Collection<Element> e = root.getDescendants();
        assertEquals(15, e.size());

        // TD
        Collection<Element> ths = root.getDescendants(Th.class);
        assertEquals(2, ths.size());

        // TD
        Collection<Element> tds = root.getDescendants(Td.class);
        assertEquals(4, tds.size());

        // SPAN
        Collection<Element> spans = root.getDescendants(Span.class);
        assertEquals(1, spans.size());

        // TABLE
        Collection<Element> tables = root.getDescendants(Table.class);
        assertEquals(2, tables.size());

        // COMBINATIONS
        assertEquals(6, root.getDescendants(Th.class, Td.class).size());
        assertEquals(7, root.getDescendants(Th.class, Td.class, Span.class).size());
        assertEquals(10, root.getDescendants(Th.class, Td.class, Span.class, Tr.class).size());
    }


    @Test
    public void getCount() {

        Table table = new Table(); // 1
        table.add(new Caption("Caption")); // 2
        table.add(new Tr(new Td(), new Td())); // 3
        table.add(new Tr(new Td(), new Td())); // 3

        Html html = new Html(new Body(table)); // 2

        assertEquals(11, html.getDescendantCount());

    }

    @Test
    public void setAttributes_cannotBeNull() {
        Element element = new Element("cheeseburger");
        element.addAttribute(new Attribute("name1", "value1"));
        element.addAttribute(new Attribute("name2", "value2"));
        assertEquals(2, element.getAttributes().size());

        element.setAttributes(null);
        assertNotNull(element.getAttributes());
        assertEquals(0, element.getAttributes().size());
    }

    @Test
    public void getAttribute() {
        Element element = new Element("cheeseburger");
        element.addAttribute(new Attribute("name1", "value1"));
        element.addAttribute(new Attribute("name2", "value2"));
        element.addAttribute(new Attribute("name3", "value3"));

        assertEquals("value1", element.getAttribute("name1").getValue());
        assertEquals("value2", element.getAttribute("name2").getValue());
        assertEquals("value3", element.getAttribute("name3").getValue());
    }

    @Test
    public void id() {
        Div div = new Div();
        div.setId("some-id-string");
        assertEquals("<div id='some-id-string'/>", div.toString());
    }

    @Test
    public void setStyle() {
        Div div = new Div();
        div.setId("some-id-string");
        div.setStyle("font-weight: bold; border: 1px solid green");
        assertEquals("font-weight: bold; border: 1px solid green", div.getStyle());
        assertEquals("<div style='font-weight: bold; border: 1px solid green' id='some-id-string'/>", div.toString());
    }

    @Test
    public void appendStyle() {
        Div div = new Div();
        div.setId("some-id-string");
        assertEquals("<div id='some-id-string'/>", div.toString());
        div.appendStyle("color:red");
        assertEquals("<div style='color:red' id='some-id-string'/>", div.toString());
        div.appendStyle("font-size:1em");
        assertEquals("<div style='color:red;font-size:1em' id='some-id-string'/>", div.toString());
    }


}

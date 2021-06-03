package com.redshiftsoft.element;

import kdw.common.system.memory.MemoryBean;
import org.junit.Test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class Element_Speed_UT {

    /**
     * Use this method to test the impact of any changes on performance. Use these memory settings, to ensure allocation is
     * not part of resulting times: -Xmx60m -Xms60m
     */
    @Test
    //@Ignore
    public void largeDocumentSpeed() throws Exception {
        final int ROWS = 300;
        final int COLS = 10;

        long startTime = System.currentTimeMillis();

        Table table = new Table();

        for (int row = 1; row <= ROWS; row++) {
            Tr tr = new Tr();
            for (int col = 1; col <= COLS; col++) {
                Td td = new Td();
                if (col == 1) {
                    td.add(new Div(new CData("Div")));
                }
                if (col == 2) {
                    td.add(new Span("Span"));
                }
                if (col == 3) {
                    td.setStyle("font-weight: bold;");
                    td.add(new CData("style"));
                }
                if (col == 4) {
                    td.addClass("cellClass");
                    td.add(new CData("class"));
                }
                if (col == 5) {
                    td.add(new CData("top"), new Br(), new CData("bottom"));
                }
                if (col == 6) {
                    td.add(new H(3, new CData("hi" + row)));
                }
                if (col >= 7) {
                    A link = new A("cdata", "href", "title");
                    td.add(link);
                }
                tr.add(td);
            }
            tr.addClass("rowClass");
            table.add(tr);
        }

        Html html = new Html(new Body(table));

        long constructTime = System.currentTimeMillis();
        // html.setPretty(false);
        String result = html.toString();
        assertNotNull(result);
        long renderTime = System.currentTimeMillis();

        System.out.println("MEMORY    : " + new MemoryBean());
        System.out.println("NODE COUNT: " + html.getDescendantCount());
        System.out.println("CONSTRUCT : " + (constructTime - startTime));
        System.out.println("RENDER    : " + (renderTime - constructTime));
        System.out.println("TOTAL     : " + (renderTime - startTime));

        assertTrue(renderTime - startTime < 300);
    }


}

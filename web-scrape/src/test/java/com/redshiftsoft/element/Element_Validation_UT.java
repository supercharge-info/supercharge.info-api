package com.redshiftsoft.element;

import org.junit.Test;

import java.io.IOException;

public class Element_Validation_UT {

    @Test
    public void createsWellFormedDocument() throws IOException {

        /* Create the table */
        Table table = createTable();

        /* Some content outside of the table */
        Div testDiv = createTestDIV();

        /* Some ordered lists */
        Div listDiv = createListDiv();

        /* Link images */
        Div imageDiv = createImageDiv();

        Div formDiv = createFormDiv();

        /* The body */
        Div divider = new Div(new Br(), new Hr(), new Br());
        Body body = new Body(table, divider, testDiv, divider, testDiv, divider, listDiv, divider, imageDiv, divider, formDiv);

        /* style and title */
        Style style = new Style();
        style.addText("table { border-collapse: collapse; }");
        style.addText("td { border: 1px solid black } ");
        style.addText("th { border: 1px solid black ; font-weight: bold }");

        Link link = new Link("inc/img/favicon.ico", "shortcut icon", "image/vnd.microsoft.icon");

        Head head = new Head(new Title("Element Test"), style, link);

        /* Create the HTML and enclosing head elements */
        Html html = new Html(head, body);
        html.addAttribute("xmlns", "http://www.w3.org/1999/xhtml");

        /* Print */
        html.setPretty(true);
        String result = html.toString();
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    private Div createFormDiv() {
        Input input1 = new Input(Input.TYPE_TEXT, "input1", "inputOneValue");
        Input input2 = new Input(Input.TYPE_BUTTON, "input2");
        Input input3 = new Input(Input.TYPE_CHECKBOX, "input3");
        Input input4 = new Input(Input.TYPE_FILE, "input4");
        Input input5 = new Input(Input.TYPE_RADIO, "input5");
        Input input6 = new Input(Input.TYPE_PASSWORD, "input6");
        Input input7 = new Input(Input.TYPE_SUBMIT, "input7");
        Input input8 = new Input(Input.TYPE_SUBMIT, "input8");
        Input input9 = new Input(Input.TYPE_RESET, "input9");
        Input input10 = new Input(Input.TYPE_HIDDEN, "input10");

        Option option1 = new Option("value1", "display option 1");
        Option option2 = new Option("value2", "display option 2");
        Select select = new Select("input11");
        select.add(option1, option2);

        Form form = new Form("post", "/some/action");
        form.add(input1, input2, input3, input4, input5, input6, input7, input8, input9, input10, select);

        Div div = new Div();
        div.add(form);

        return div;
    }

    private Div createImageDiv() {
        Div imageDiv = new Div();
        imageDiv.add(new Img("http://graphics8.nytimes.com/images/misc/nytlogo379x64.gif", "alt"));
        imageDiv.setStyle("border: 1px solid green;");
        return imageDiv;
    }


    private Div createListDiv() {
        Ol ol = new Ol();
        Ul ul = new Ul();
        Div listDiv = new Div(ol, ul);
        listDiv.setStyle("border: 5px solid green");
        for (int i = 1; i <= 5; i++) {
            Li li = new Li("list element " + i);
            ol.add(li);
            ul.add(li);
        }
        return listDiv;
    }

    private Div createTestDIV() {
        Div divParent = new Div();
        divParent.setStyle("margin-top: 1em; border: 5px solid blue;");
        divParent.addClass("monkey2");
        divParent.add(new Div(new Span("child 1")));
        divParent.add(new Div(new B(new Span("child 2"))));
        for (int h = 1; h <= 6; h++) {
            divParent.add(new H(h, new CData("Heading h" + h)));
        }
        return divParent;
    }

    private Table createTable() {
        final int ROWS = 10;
        final int COLS = 4;


        Table table = new Table("bigTable", "color: blue; border: 1px solid black;");
        table.add(new Caption("This is a test table."));
        Colgroup colgroup = new Colgroup();
        for (int i = 0; i < COLS; i++) {
            Col col = (i == COLS - 1 ? new Col("50%") : new Col());
            colgroup.add(col);
        }
        table.add(colgroup);

        /* STEP 2: Header row */
        Tr headerRow = new Tr();
        for (int col = 0; col < COLS; col++) {
            Th th = new Th("Header" + col);
            headerRow.add(th);
        }
        table.add(headerRow);

        /* STEP 3: Main table */
        for (int row = 0; row < ROWS; row++) {
            Tr tr = new Tr();

            for (int col = 0; col < COLS; col++) {
                Td td = new Td(row + " - " + col);
                tr.add(td);
            }

            table.add(tr);
        }

        /* STEP 4: Additional row, spanning the table, with link */
        Td td = new Td();
        td.setColSpan(COLS);
        td.add(new A("Click here to do something.", "http://www.cnn.com", "click me"));
        table.add(new Tr(td));
        return table;
    }


}

package com.redshiftsoft.element;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Select_UT {

    @Test
    public void test() {

        OptGroup weekendGroup = new OptGroup("Weekend");
        weekendGroup.add(new Option("100", "Sunday"));
        weekendGroup.add(new Option("200", "Saturday", true));

        OptGroup weekDayGroup = new OptGroup("Week Day");
        weekDayGroup.add(new Option("300", "Monday"));
        weekDayGroup.add(new Option("400", "Tuesday"));
        weekDayGroup.add(new Option(500, "Wednesday"));

        Select select = new Select("fieldName");
        select.add(weekendGroup);
        select.add(weekDayGroup);

        assertEquals("<select name='fieldName'><optgroup label='Weekend'><option value='100'>Sunday</option><option value='200' selected='selected'>Saturday</option></optgroup><optgroup label='Week Day'><option value='300'>Monday</option><option value='400'>Tuesday</option><option value='500'>Wednesday</option></optgroup></select>", select.toString());
    }

}

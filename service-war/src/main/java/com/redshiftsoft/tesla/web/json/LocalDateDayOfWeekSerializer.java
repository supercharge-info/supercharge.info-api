package com.redshiftsoft.tesla.web.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


public class LocalDateDayOfWeekSerializer extends JsonSerializer<LocalDate> {

    private final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("EEE, MMM d yyyy");

    @Override
    public void serialize(LocalDate value, JsonGenerator jsonGenerator, SerializerProvider provider) throws IOException {
        jsonGenerator.writeString(FORMATTER.format(value));
    }
}

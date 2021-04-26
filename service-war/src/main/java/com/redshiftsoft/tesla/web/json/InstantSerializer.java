package com.redshiftsoft.tesla.web.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.time.Instant;
import java.time.format.DateTimeFormatter;


/**
 * Formats an Instant field using ISO date time format so that Javascript can
 * display the date in timezone of browser.
 */
public class InstantSerializer extends JsonSerializer<Instant> {

    @Override
    public void serialize(Instant value, JsonGenerator jsonGenerator,
                          SerializerProvider provider) throws IOException {
        jsonGenerator.writeString(DateTimeFormatter.ISO_INSTANT.format(value));
    }
}

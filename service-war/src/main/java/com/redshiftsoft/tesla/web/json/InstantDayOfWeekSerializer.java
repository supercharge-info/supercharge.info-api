package com.redshiftsoft.tesla.web.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Locale;


public class InstantDayOfWeekSerializer extends JsonSerializer<Instant> {

    private final DateTimeFormatter FORMATTER = DateTimeFormatter
            .ofPattern("EEE, MMM d yyyy", Locale.US)
            .withZone(ZoneId.of("America/Chicago"));

    @Override
    public void serialize(Instant value, JsonGenerator jsonGenerator, SerializerProvider provider) throws IOException {
        jsonGenerator.writeString(FORMATTER.format(value));
    }
}

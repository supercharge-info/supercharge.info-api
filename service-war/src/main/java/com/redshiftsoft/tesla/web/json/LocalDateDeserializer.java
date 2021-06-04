package com.redshiftsoft.tesla.web.json;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;

import java.io.IOException;
import java.time.LocalDate;

import static com.redshiftsoft.util.StringTools.isEmpty;


public class LocalDateDeserializer extends JsonDeserializer<LocalDate> {

    @Override
    public LocalDate deserialize(JsonParser jp, DeserializationContext ctxt) throws IOException {
        JsonNode node = jp.getCodec().readTree(jp);
        String dateText = node.asText();
        return isEmpty(dateText) ? null : LocalDate.from(LocalDateSerializer.FORMATTER.parse(dateText));
    }
}

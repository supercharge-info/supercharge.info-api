package com.redshiftsoft.tesla.web;

import com.fasterxml.jackson.core.JsonGenerator;
import com.redshiftsoft.tesla.web.json.LocalDateSerializer;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.time.LocalDate;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

public class LocalDateSerializer_UT {

    private final LocalDateSerializer serializer = new LocalDateSerializer();

    @Test
    public void serialize() throws IOException {

        LocalDate localDate = LocalDate.of(2014, 1, 24);

        JsonGenerator jsonGenerator = mock(JsonGenerator.class);

        serializer.serialize(localDate, jsonGenerator, null);

        verify(jsonGenerator).writeString("2014-01-24");
    }


}
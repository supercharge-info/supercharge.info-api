package com.redshiftsoft.tesla.web.mvc.feature;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

import java.time.LocalDate;
import java.time.LocalDateTime;

import static org.junit.Assert.assertEquals;

public class FeatureDTO_UT {

    @Test
    public void serialization() throws JsonProcessingException {
        FeatureDTO dto = new FeatureDTO();
        dto.setId(123456);
        dto.setTitle("the title");
        dto.setDescription("This is a test description.");
        dto.setAddedDate(LocalDate.of(2016, 12, 29));
        dto.setModifiedDate(LocalDateTime.of(2017, 10, 14, 17, 30, 45));

        String result = new ObjectMapper().writeValueAsString(dto);

        assertEquals("{\"id\":123456,\"title\":\"the title\",\"description\":\"This is a test description.\",\"addedDate\":\"2016-12-29\",\"modifiedDate\":\"2017-10-14 17:30:45\"}", result);

    }

}

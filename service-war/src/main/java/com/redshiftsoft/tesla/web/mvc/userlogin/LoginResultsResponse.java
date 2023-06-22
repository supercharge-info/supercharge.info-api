package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class LoginResultsResponse {

    private List<LoginAttemptDTO> attempts;
    private Map<Integer, List<Long[]>> edits;

    public void setAttempts(List<LoginAttemptDTO> attempts) {
        this.attempts = attempts;
    }

    public void setEdits(Map<Integer, List<Long[]>> edits) {
        this.edits = edits;
    }

    public List<LoginAttemptDTO> getAttempts() {
        return attempts;
    }

    public Map<Integer, List<Long[]>> getEdits() {
        return edits;
    }
}

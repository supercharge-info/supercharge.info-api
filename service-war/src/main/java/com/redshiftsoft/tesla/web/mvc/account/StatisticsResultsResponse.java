package com.redshiftsoft.tesla.web.mvc.account;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class StatisticsResultsResponse {

    private List<LoginAttemptDTO> attempts;
    private Map<Integer, List<Long[]>> logins;
    private Map<Integer, List<Long[]>> edits;
    private Map<Integer, List<Long[]>> additions;

    public void setAttempts(List<LoginAttemptDTO> attempts) {
        this.attempts = attempts;
    }

    public void setLogins(Map<Integer, List<Long[]>> logins) {
        this.logins = logins;
    }

    public void setEdits(Map<Integer, List<Long[]>> edits) {
        this.edits = edits;
    }

    public void setAdditions(Map<Integer, List<Long[]>> additions) {
        this.additions = additions;
    }

    public List<LoginAttemptDTO> getAttempts() {
        return attempts;
    }

    public Map<Integer, List<Long[]>> getLogins() {
        return logins;
    }

    public Map<Integer, List<Long[]>> getEdits() {
        return edits;
    }

    public Map<Integer, List<Long[]>> getAdditions() {
        return additions;
    }
}

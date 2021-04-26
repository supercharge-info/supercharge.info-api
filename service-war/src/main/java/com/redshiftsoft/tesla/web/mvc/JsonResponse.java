package com.redshiftsoft.tesla.web.mvc;

import com.google.common.collect.Lists;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class JsonResponse {

    private Result result;
    private List<String> messages;

    public JsonResponse(Result result, String messages) {
        this.result = result;
        this.messages = messages == null ? null : Lists.newArrayList(messages);
    }

    public JsonResponse(Result result, List<String> messages) {
        this.result = result;
        this.messages = messages;
    }

    @SuppressWarnings("unchecked")
    public <T> T withStatus(HttpServletResponse response, int code) {
        response.setStatus(code);
        return (T)this;
    }

    // - - - - - - - - - -
    // factory methods
    // - - - - - - - - - -

    public static JsonResponse success() {
        return new JsonResponse(Result.SUCCESS, (String) null);
    }

    public static JsonResponse success(String message) {
        return new JsonResponse(Result.SUCCESS, message);
    }

    public static JsonResponse error(Throwable t) {
        return new JsonResponse(Result.FAIL, t.getMessage());
    }

    public static JsonResponse fail() {
        return new JsonResponse(Result.FAIL, (String) null);
    }

    public static JsonResponse fail(String message) {
        return new JsonResponse(Result.FAIL, message);
    }

    public static JsonResponse fail(List<String> messages) {
        return new JsonResponse(Result.FAIL, messages);
    }


    // - - - - - - - - - -
    // getters/setters
    // - - - - - - - - - -

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public List<String> getMessages() {
        return messages;
    }

    public void setMessages(List<String> messages) {
        this.messages = messages;
    }

    public enum Result {
        SUCCESS, FAIL
    }
}

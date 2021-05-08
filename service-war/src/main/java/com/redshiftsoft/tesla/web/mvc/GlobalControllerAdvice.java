package com.redshiftsoft.tesla.web.mvc;


import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;

/**
 * By default the methods in a @ControllerAdvice apply globally to all Controllers.
 */
@ControllerAdvice
public class GlobalControllerAdvice {


    @ExceptionHandler(AccessDeniedException.class)
    public ResponseEntity<JsonResponse> handleAccessDeniedException(Exception ex, WebRequest request) {
        return new ResponseEntity<>(JsonResponse.fail("Forbidden"), HttpStatus.FORBIDDEN);
    }

}

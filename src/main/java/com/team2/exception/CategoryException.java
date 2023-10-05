package com.team2.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value=HttpStatus.NOT_FOUND, reason="요청한 처리를 할 수 없습니다.")
public class CategoryException extends RuntimeException {
	
}


package com.team2.validator;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.validation.ConstraintViolation;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.team2.domain.Movie;

import org.springframework.beans.factory.annotation.Autowired;

public class MovieValidator implements Validator {

	@Autowired
	private javax.validation.Validator beanValidator;
	
	private Set<Validator> springValidators;
	public MovieValidator() {
		springValidators = new HashSet<Validator>();
	}
	
	public void setSpringValidators(Set<Validator> springValidators) {
		this.springValidators = springValidators;
	}
	
	public boolean supports(Class<?> clazz) {
		return Movie.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		Set<ConstraintViolation<Object>> violations = beanValidator.validate(target);
		for(ConstraintViolation<Object> violation : violations) {
			String propertyPath = violation.getPropertyPath().toString();
			String message = violation.getMessage();
			errors.rejectValue(propertyPath, "", message);
		}
		
		for(Validator validator: springValidators) {
			validator.validate(target, errors);
		}
	}
}

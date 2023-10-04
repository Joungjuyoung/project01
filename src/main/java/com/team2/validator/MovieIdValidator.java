package com.team2.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.team2.domain.Movie;
import com.team2.exception.MovieIdException;
import com.team2.service.MovieService;

public class MovieIdValidator implements ConstraintValidator<MovieId, String> {
	
	@Autowired
	private MovieService movieService;
	
	public void initialize(MovieId constraintAnnotation) {
	
	}
	public boolean isValid(String value, ConstraintValidatorContext context) {
		Movie movie;
		try {
			movie = movieService.getMovieById(value);
		} catch(MovieIdException e) {
			return true;
		}
		if(movie!=null) {
			return false;
		}
		return true;
	}
	
}

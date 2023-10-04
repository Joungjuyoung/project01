package com.team2.validator;

import org.springframework.beans.factory.annotation.Autowired;

import com.team2.domain.Movie;
import com.team2.exception.MovieIdException;
import com.team2.service.MovieService;

public class MovieIdValidator implements ConstraintValidator<MovieId, String> {
	
	@Autowired
	private MovieService movieService;
	
	public void initialize(MovieId constraintAnnotation) {
		Movie movie;
		try {
			movie = movieService.getMovieById(value);
		} catch(MovieIdException e) {
			return true;
		}
		if(book!=null) {
			return false;
		}
		return true;
	}
}

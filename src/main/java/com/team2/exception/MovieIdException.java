package com.team2.exception;

@SuppressWarnings("serial")
public class MovieIdException extends RuntimeException{
	private String movieId;
	
	public MovieIdException(String movieId) {
		this.movieId = movieId;
	}
	
	public String getMovieId() {
		return movieId;
	}
}
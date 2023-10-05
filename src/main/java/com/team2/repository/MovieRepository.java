package com.team2.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.team2.domain.Movie;

public interface MovieRepository {
	 List<Movie> getAllMovieList();
	 List<Movie> getMovieListByCategory(String category);
	 Set<Movie> getMovieListByFilter(Map<String, List<String>> filter);
	 Movie getMovieById(String movieId);
	 void setNewMovie(Movie movie);
	 void setUpdateMovie(Movie movie);
	 void setDeleteMovie(String movieId);
}

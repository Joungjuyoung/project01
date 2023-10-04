package com.team2.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team2.domain.Movie;
import com.team2.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService{
	 @Autowired
	 private MovieRepository movieRepository;
	 
	 public List<Movie> getAllMovieList() { 
	        // TODO Auto-generated method stub
		 return movieRepository.getAllMovieList();
	 } 
	 
	 
	 public List<Movie> getMovieListByCategory(String category) {  
	      List<Movie> moviesByCategory = movieRepository.getMovieListByCategory(category);  
	      return moviesByCategory;  
	 }  
	 
	 public Set<Movie> getMovieListByFilter(Map<String, List<String>> filter) {
	      Set<Movie> moviesByFilter = movieRepository.getMovieListByFilter(filter); 
	      return moviesByFilter;
	 }
	 
	 public Movie getMovieById(String movieId) {
	        Movie movieById = movieRepository.getMovieById(movieId);
	        return movieById;
	 }
	 
	 public void setNewMovie(Movie movie) {  
	        movieRepository.setNewMovie(movie);  
	 }  
	 public void setUpdateMovie(Movie movie) {  
	        movieRepository.setUpdateMovie(movie);
	 } 
	 
	  public void setDeleteMovie(String movieID) { 
	        movieRepository.setDeleteMovie(movieID);
	    }
}

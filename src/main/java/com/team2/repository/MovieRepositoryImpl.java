package com.team2.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.team2.domain.Movie;

@Repository
public class MovieRepositoryImpl implements MovieRepository {

		private JdbcTemplate template;
		
		@Autowired
		public void setJdbcTemplate(DataSource dataSource) {
			this.template = new JdbcTemplate(dataSource);
		}
		
		private List<Movie> listOfMovies = new ArrayList<Movie>();
}

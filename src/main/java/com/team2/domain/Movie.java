package com.team2.domain;
import org.springframework.web.multipart.MultipartFile;

public class Movie {
	private String movieId;
	private String title;
	private MultipartFile image;
	private String briefContent;
	private String detailContent;
	private int avgGrade;
	private String releaseDate;
	private String FileName;
	private String category;
	
	public Movie(String movieId, String title) {
		super();
		this.movieId = movieId;
		this.title = title;
		this.category = category;
	}

	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getBriefContent() {
		return briefContent;
	}

	public void setBriefContent(String briefContent) {
		this.briefContent = briefContent;
	}

	public String getDetailContent() {
		return detailContent;
	}

	public void setDetailContent(String detailContent) {
		this.detailContent = detailContent;
	}

	public int getAvgGrade() {
		return avgGrade;
	}

	public void setAvgGrade(int avgGrade) {
		this.avgGrade = avgGrade;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getFileName() {
		return FileName;
	}

	public void setFileName(String fileName) {
		FileName = fileName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}

package com.team2.controller;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.team2.domain.Movie;
import com.team2.service.MovieService;
import com.team2.exception.CategoryException;

@Controller
@RequestMapping("/movies")
public class MovieController {
	@Autowired
	private MovieService movieService;
	
	@GetMapping
	public String requestMovieList(Model model) {
		List<Movie> list = movieService.getAllMovieList();
		model.addAttribute("movieList", list);
		return "movies";
	}
	
	@GetMapping("/all")
	public ModelAndView requestAllMovies() {
		ModelAndView modelAndView = new ModelAndView();
		List<Movie> list = movieService.getAllMovieList();
		modelAndView.addObject("movieList", list);
		modelAndView.setViewName("movies");
		return modelAndView;
	}
	
	@GetMapping("/{category}")
	public String requestMoviesByCategory(@PathVariable("category") String movieCategory, Model model) {
		List<Movie> moviesByCategory = movieService.getMovieListByCategory(movieCategory);
		
		if(moviesByCategory == null || moviesByCategory.isEmpty()) {
			throw new CategoryException();
		}
		
		model.addAttribute("movieList", moviesByCategory);
		return "movies";
	}
	
	@GetMapping("/filter/{movieFilter}")
	public String requestMoviesByFilter(@MatrixVariable(pathVar="movieFilter") Map<String, List<String>> movieFilter,
	Model model) {
		Set<Movie> moviesByFilter = movieService.getMovieListByFilter(movieFilter);
		model.addAttribute("movieList", moviesByFilter);
		return "movies";
	}
	
	@GetMapping("/movie")
	public String requestMovieById(@RequestParam("id") String movieId, Model model) {
		Movie movieById = movieService.getMovieById(movieId);
		model.addAttribute("movie", movieById);
		return "movie";
	}
	
	@GetMapping("/add")
	public String requestAddMovieForm(@ModelAttribute("NewMovie") Movie movie) {
		return "addMovie";
	}
	
	@PostMapping("/add")
	public String submitAddMovieForm(@Valid @ModelAttribute("NewMovie") Movie movie, BindingResult result) {
		if(result.hasErrors()) {
			return "addMovie";
		}
		
		MultipartFile image = movie.getImage();
		
		String saveName = image.getOriginalFilename();
		File saveFile = new File("C:\\uploadmovie", saveName);
		
		if(image != null && !image.isEmpty()) {
			try {
				image.transferTo(saveFile);
				movie.setFileName(saveName);
			} catch(Exception e) {
				throw new RuntimeException("영화 이미지 업로드가 실패하였습니다.");
			}
		}
		
		movieService.setNewMovie(movie);
		return "redirect:/movies";
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("addTitle", "신규 영화 등록");
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setValidator(movieValidator);
		binder.setAllowedFields("movieId", "title", "image", "briefContent", "detailContent",
				"avgGrade", "releaseDate");
	}
	
	@ExceptionHandler(value= {MovieIdException.class})
	public ModelAndView handleError(HttpServletRequest req, MovieIdException exception) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("invalidMovieId", exception.getMovieId());
		mav.addObject("exception", exception);
		mav.addObject("url", req.getRequestURL()+"?"+req.getQueryString());
		mav.setViewName("errorMovie");
		return mav;
	}
	
	@GetMapping("/update")
	public String getUpdateMovieForm(@ModelAttribute("updateMovie") Movie movie, @RequestParam("id") String movieId, Model model) {
		Movie movieById = movieService.getMovieById(movieId);
		model.addAttribute("movie", movieById);
		return "updateForm";
	}
	@PostMapping("/update") 
    public String submitUpdateMovieForm(@ModelAttribute("updateMovie") Movie movie) {
        MultipartFile image = movie.getImage();
        String rootDirectory = "c:/upload/";
        if (image!=null && !image.isEmpty()) {
            try {
                String fname = image.getOriginalFilename(); 
                image.transferTo(new File("c:/upload/" + fname));
                movie.setFileName(fname);
            } catch (Exception e) {
                throw new RuntimeException("Movie Image saving failed", e);
            }
        }
        movieService.setUpdateMovie(movie);
        return "redirect:/movies";
    }  
    
    @RequestMapping(value = "/delete") 
    public String getDeleteMovieForm(Model model, @RequestParam("id") String movieId) {
        movieService.setDeleteMovie(movieId);
        return "redirect:/movies";
    }
}
}

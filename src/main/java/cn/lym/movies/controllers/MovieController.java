package cn.lym.movies.controllers;

import cn.lym.movies.model.Movie;
import cn.lym.movies.Pagination;
import cn.lym.movies.services.MovieService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/movies")
public class MovieController {
    @Resource
    private MovieService movieService;

    @GetMapping("/")
    public Pagination<Movie> listMovies(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "size", defaultValue = "25") int size) {
        return this.movieService.listMovies(page, size);
    }
}

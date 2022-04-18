package cn.lym.movies.services;

import cn.lym.movies.model.Movie;
import cn.lym.movies.Pagination;
import cn.lym.movies.repository.MovieRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MovieService {
    @Resource
    private MovieRepository movieRepository;

    public Pagination<Movie> listMovies(int page, int size) {
        List<Movie> movies = this.movieRepository.list(size * (page - 1), size);
        int total = this.movieRepository.count();
        return Pagination
                .<Movie>builder()
                .total(total)
                .hasNext(size * page < total)
                .data(movies)
                .build();
    }
}

package cn.lym.movies.repository;

import cn.lym.movies.model.Movie;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MovieRepository {
    @Select("SELECT * FROM movies_tab LIMIT #{offset}, #{limit}")
    List<Movie> list(@Param("offset") int offset, @Param("limit") int limit);

    @Select("SELECT COUNT(*) FROM movies_tab")
    int count();
}

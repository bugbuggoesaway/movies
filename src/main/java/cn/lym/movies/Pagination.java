package cn.lym.movies;

import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class Pagination<E> {
    private int total;
    private boolean hasNext;
    private List<E> data;
}

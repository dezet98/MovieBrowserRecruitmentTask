import 'dart:math';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';

class ApiServiceHelper {
  MovieList searchMovies(
    String query,
    int page, {
    int totalResults = 100,
    int totalPages = 2,
    int moviesAmount = 10,
  }) {
    return MovieList(
      totalResults: totalResults,
      results: List.generate(
          moviesAmount,
          (int index) => Movie(
                id: index,
                title: "Title-$index",
                voteAverage: Random().nextInt(100).toDouble(),
              )),
      page: page,
      totalPages: totalPages,
    );
  }

  Movie getMovieDetails(
    int movieId, {
    String title = "Title-0",
    int? budget,
    int? revenue,
  }) {
    return Movie(
      id: movieId,
      title: title,
      voteAverage: Random().nextInt(100).toDouble(),
      budget: budget ?? 10000 + Random().nextInt(1000000),
      revenue: revenue ?? 10000 + Random().nextInt(1000000),
    );
  }
}

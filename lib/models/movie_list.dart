import 'package:equatable/equatable.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_list.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieList extends Equatable {
  final int totalResults;
  final List<Movie> results;
  final int page;
  final int totalPages;

  MovieList({
    required this.totalResults,
    required this.results,
    required this.page,
    required this.totalPages,
  });

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListToJson(this);

  static int compareVoteAverage(Movie firstMovie, Movie secondMovie) {
    if (firstMovie.voteAverage < secondMovie.voteAverage) {
      return 1;
    }
    if (firstMovie.voteAverage > secondMovie.voteAverage) {
      return -1;
    }
    return 0;
  }

  @override
  List<Object?> get props => [totalResults, results, totalPages, page];
}

import 'package:bloc/bloc.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_recruitment_task/utils/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_cubit.freezed.dart';

class MovieListCubit extends Cubit<MovieListState> {
  ApiService _apiService;

  MovieListCubit(this._apiService) : super(MovieListState.initial(""));

  Map<int, List<Movie>> movies = {};

  Future<void> loadMovies(String query) async {
    movies.clear();
    emit(MovieListState.loading(query));
    await _load(query, page: 1);
  }

  Future<void> clear() async {
    movies.clear();
    emit(MovieListState.initial(""));
  }

  Future<void> loadMore() async {
    await _load(state.query, page: movies.entries.last.key + 1);
  }

  Future<void> _load(String query, {required page}) async {
    if (query.isEmpty) {
      return await clear();
    }

    final response = await _apiService.searchMovies(query, page);

    response.fold(
      (movieList) {
        movies[page] = movieList.results;
        final allMovies = _getAllMovies();
        final canLoadMore = movieList.page < movieList.totalPages;

        emit(allMovies.isEmpty
            ? MovieListState.empty(query)
            : MovieListState.loadSuccess(query, allMovies, canLoadMore));
      },
      (error) => emit(MovieListState.loadFailure(query, error)),
    );
  }

  List<Movie> _getAllMovies() {
    return movies.values.fold(
      [],
      (finalList, pageList) => finalList..addAll(pageList),
    )..sort(MovieList.compareVoteAverage);
  }
}

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial(String query) = MovieListInitial;
  const factory MovieListState.loading(String query) = MovieListLoading;
  const factory MovieListState.loadFailure(String query, AppException error) =
      MovieListFailure;
  const factory MovieListState.empty(String query) = MovieListEmpty;
  const factory MovieListState.loadSuccess(
      String query, List<Movie> movies, bool canLoadMore) = MovieListSuccess;
}

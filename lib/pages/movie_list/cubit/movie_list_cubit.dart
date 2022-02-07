import 'package:bloc/bloc.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_cubit.freezed.dart';

class MovieListCubit extends Cubit<MovieListState> {
  ApiService _apiService;

  MovieListCubit(this._apiService) : super(MovieListState.initial(""));

  Future<void> loadMovies(String query) async {
    emit(MovieListState.loading(query));

    final response = await _apiService.searchMovies(query);

    response.fold(
      (movies) {
        emit(movies.isEmpty
            ? MovieListState.empty(query)
            : MovieListState.loadSuccess(query, movies));
      },
      (error) => emit(MovieListState.loadFailure(query)),
    );
  }
}

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial(String query) = MovieListInitial;
  const factory MovieListState.loading(String query) = MovieListLoading;
  const factory MovieListState.loadFailure(String query) = MovieListFailure;
  const factory MovieListState.empty(String query) = MovieListEmpty;
  const factory MovieListState.loadSuccess(String query, List<Movie> movies) =
      MovieListSuccess;
}

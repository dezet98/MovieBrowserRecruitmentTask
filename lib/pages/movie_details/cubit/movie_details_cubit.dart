import 'package:bloc/bloc.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_recruitment_task/utils/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_cubit.freezed.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final ApiService _apiService;
  Movie movie;

  MovieDetailsCubit(this._apiService, {required this.movie})
      : super(MovieDetailsState.initial(movie)) {
    load();
  }

  Future<void> load() async {
    emit(MovieDetailsState.loading(state.movie));

    final response = await _apiService.getMovieDetails(state.movie.id);

    response.fold(
      (movie) {
        emit(MovieDetailsState.loadSuccess(movie));
      },
      (error) => emit(MovieDetailsState.loadFailure(state.movie, error)),
    );
  }
}

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial(Movie movie) = MovieDetailsInitial;
  const factory MovieDetailsState.loading(Movie movie) = MovieDetailsLoading;
  const factory MovieDetailsState.loadFailure(Movie movie, AppError error) =
      MovieDetailsFailure;
  const factory MovieDetailsState.loadSuccess(Movie movie) =
      MovieDetailsSuccess;
}

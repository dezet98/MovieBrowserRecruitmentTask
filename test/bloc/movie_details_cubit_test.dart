import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/cubit/movie_details_cubit.dart';
import 'package:flutter_recruitment_task/utils/errors.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/common.mocks.dart';
import '../mocks/fake_api_service.dart';

void main() {
  group('MovieDetailsCubit test', () {
    final MockApiService mockApiService = MockApiService();
    final ApiServiceHelper fakeApiService = ApiServiceHelper();
    late MovieDetailsCubit cubit;
    late Movie initialMovie;

    setUp(() async {
      initialMovie = const Movie(title: "Forrest Gump", voteAverage: 97, id: 0);
      cubit = MovieDetailsCubit(mockApiService, movie: initialMovie);
      when(mockApiService.getMovieDetails(initialMovie.id))
          .thenAnswer((_) async {
        return left(fakeApiService.getMovieDetails(initialMovie.id));
      });
    });

    tearDown(() {
      cubit.close();
    });

    blocTest<MovieDetailsCubit, MovieDetailsState>(
      'emits [MovieDetailsInitial] with initial movie as first state',
      build: () => cubit,
      verify: (bloc) => bloc.state == MovieDetailsState.initial(initialMovie),
    );

    blocTest<MovieDetailsCubit, MovieDetailsState>(
      'emits [MovieDetailsLoading, MovieDetailsSuccess] when load successful',
      build: () => cubit,
      act: (bloc) => bloc.load(),
      expect: () => [isA<MovieDetailsLoading>(), isA<MovieDetailsSuccess>()],
    );

    blocTest<MovieDetailsCubit, MovieDetailsState>(
      'emits [MovieDetailsLoading, MovieDetailsFailure] when load failure',
      setUp: () {
        when(mockApiService.getMovieDetails(initialMovie.id))
            .thenAnswer((_) async {
          return right(NoInternetError());
        });
      },
      build: () => cubit,
      act: (bloc) => bloc.load(),
      expect: () => [isA<MovieDetailsLoading>(), isA<MovieDetailsFailure>()],
    );
  });
}

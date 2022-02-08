import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:flutter_recruitment_task/pages/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_recruitment_task/utils/errors.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/common.mocks.dart';
import '../mocks/fake_api_service.dart';

void main() {
  group('MovieDetailsCubit test', () {
    final MockApiService mockApiService = MockApiService();
    final ApiServiceHelper fakeApiService = ApiServiceHelper();
    late MovieListCubit cubit;
    late MovieList? movieList;
    late String? query;
    late int? page;
    late int? totalPages;
    late int? moviesAmount;

    setUp(() async {
      cubit = MovieListCubit(mockApiService);
    });

    tearDown(() {
      cubit.close();
      movieList = null;
      query = null;
      page = null;

      totalPages = null;
      moviesAmount = null;
    });

    blocTest<MovieListCubit, MovieListState>(
      'emits [MovieListInitial] with initial movie as first state',
      build: () => cubit,
      verify: (bloc) => bloc.state is MovieListInitial,
    );

    blocTest<MovieListCubit, MovieListState>(
      'emits [MovieListLoading, MovieListInitial] when try load empty query',
      setUp: () async {
        query = "";
      },
      build: () => cubit,
      act: (cubit) => cubit.loadMovies(query!),
      expect: () => [
        isA<MovieListLoading>(),
        isA<MovieListInitial>(),
      ],
    );

    blocTest<MovieListCubit, MovieListState>(
      'emits [MovieListLoading, MovieListEmpty] when return is no movie',
      setUp: () async {
        query = "abc";
        page = 1;
        moviesAmount = 0;
        movieList = fakeApiService.searchMovies(query!, page!,
            moviesAmount: moviesAmount!);
        when(mockApiService.searchMovies(query, page)).thenAnswer((_) async {
          return left(movieList!);
        });
      },
      build: () => cubit,
      act: (cubit) => cubit.loadMovies(query!),
      expect: () => [
        isA<MovieListLoading>(),
        isA<MovieListEmpty>(),
      ],
    );

    blocTest<MovieListCubit, MovieListState>(
      '''emits [MovieListLoading, MovieDetailsSuccess] when load successful, 
      should sort movies by voteAverage and canLoadMore should be false
      ''',
      setUp: () async {
        query = "abc";
        page = 1;
        totalPages = 1;
        movieList = fakeApiService.searchMovies(query!, page!,
            totalPages: totalPages!)
          ..results.sort(MovieList.compareVoteAverage);
        when(mockApiService.searchMovies(query, page)).thenAnswer((_) async {
          return left(movieList!);
        });
      },
      build: () => cubit,
      act: (cubit) => cubit.loadMovies(query!),
      expect: () => [
        isA<MovieListLoading>(),
        MovieListState.loadSuccess(query!, movieList!.results, false),
      ],
    );

    blocTest<MovieListCubit, MovieListState>(
      '''emits [MovieListLoading, MovieDetailsSuccess] when load successful, 
      should sort movies by voteAverage and canLoadMore should be true
      ''',
      setUp: () async {
        query = "abc";
        totalPages = 10;
        page = 3;
        movieList = fakeApiService.searchMovies(query!, page!,
            totalPages: totalPages!)
          ..results.sort(MovieList.compareVoteAverage);
        when(mockApiService.searchMovies(query, page)).thenAnswer((_) async {
          return left(movieList!);
        });
      },
      build: () => cubit
        ..loadMovies(query!)
        ..loadMovies(query!),
      act: (cubit) => cubit.loadMovies(query!),
      expect: () => [
        MovieListState.loadSuccess(query!, movieList!.results, true),
      ],
    );

    blocTest<MovieListCubit, MovieListState>(
      'emits [MovieListLoading, MovieListFailure] when load failed',
      setUp: () async {
        query = "abc";
        page = 1;
        when(mockApiService.searchMovies(query, page)).thenAnswer((_) async {
          return right(NoInternetError());
        });
      },
      build: () => cubit,
      act: (cubit) => cubit.loadMovies(query!),
      expect: () => [
        isA<MovieListLoading>(),
        MovieListState.loadFailure(query!, NoInternetError()),
      ],
    );
  });
}

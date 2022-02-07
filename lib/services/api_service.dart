import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:flutter_recruitment_task/utils/constants.dart';
import 'package:flutter_recruitment_task/utils/exceptions.dart';
import 'package:http_interceptor/http/http.dart';
import 'interceptors.dart';

class ApiService {
  static const baseUrl = Constants.baseUrl;

  static final ApiService _singleton = ApiService._internal();

  factory ApiService() => _singleton;

  ApiService._internal();

  final _apiClient = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
    MovieApiInterceptor(),
  ]);

  Future<Either<List<Movie>, AppException>> searchMovies(String query) async {
    try {
      final parameters = {'query': query};

      final encodedParameters = parameters.entries
          .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
          .join('&');

      final response = await _apiClient
          .get(Uri.parse('$baseUrl/search/movie?$encodedParameters'));
      final json = jsonDecode(response.body);
      final movieList = MovieList.fromJson(json);

      return left(movieList.results);
    } catch (e) {
      return right(AppException());
    }
  }

  Future<Movie> getMovieDetails(int movieId) async {
    final response =
        await _apiClient.get(Uri.parse('$baseUrl/movie/$movieId?'));
    final json = jsonDecode(response.body);

    return Movie.fromJson(json);
  }

  String _encode(String component) => Uri.encodeComponent(component);
}

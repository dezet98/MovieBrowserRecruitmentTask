import 'dart:convert';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:http_interceptor/http/http.dart';
import 'interceptors.dart';

class ApiService {
  static const baseUrl = 'https://api.themoviedb.org/3';

  // TODO use rather singleton
  final _apiClient = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
    MovieApiInterceptor(),
  ]);

  Future<List<Movie>> searchMovies(String query) async {
    final parameters = {'query': query};

    final encodedParameters = parameters.entries
        .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
        .join('&');

    final response = await _apiClient
        .get(Uri.parse('$baseUrl/search/movie?$encodedParameters'));
    final json = jsonDecode(response.body);
    final movieList = MovieList.fromJson(json);

    return movieList.results;
  }

  Future<Movie> getMovieDetails(int movieId) async {
    final response =
        await _apiClient.get(Uri.parse('$baseUrl/movie/$movieId?'));
    final json = jsonDecode(response.body);

    return Movie.fromJson(json);
  }

  String _encode(String component) => Uri.encodeComponent(component);
}

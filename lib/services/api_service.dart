import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:flutter_recruitment_task/utils/constants.dart';
import 'package:flutter_recruitment_task/utils/errors.dart';
import 'package:http_interceptor/http/http.dart';

import 'interceptors.dart';

class ApiService {
  static const baseUrl = Constants.baseUrl;

  static final ApiService _singleton = ApiService._internal();

  factory ApiService() => _singleton;

  ApiService._internal();

  String _language = "en";

  void setLanguage(String code) {
    _language = code;
  }

  final _apiClient = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
    MovieApiInterceptor(),
  ]);

  Future<Either<MovieList, AppError>> searchMovies(
      String query, int page) async {
    try {
      final parameters = {
        'query': query,
        'page': page.toString(),
        'language': _language,
      };

      final encodedParameters = parameters.entries
          .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
          .join('&');

      final response = await _apiClient
          .get(Uri.parse('$baseUrl/search/movie?$encodedParameters'));
      if (response.statusCode != 200) {
        throw HttpException('${response.statusCode}');
      }
      final json = jsonDecode(response.body);

      return left(MovieList.fromJson(json));
    } catch (e) {
      final error = _handleErrors(e);
      return right(error);
    }
  }

  Future<Either<Movie, AppError>> getMovieDetails(int movieId) async {
    try {
      final parameters = {'language': _language};

      final encodedParameters = parameters.entries
          .map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}')
          .join('&');

      final response = await _apiClient
          .get(Uri.parse('$baseUrl/movie/$movieId?$encodedParameters'));
      if (response.statusCode != 200) {
        throw HttpException('${response.statusCode}');
      }
      final json = jsonDecode(response.body);

      return left(Movie.fromJson(json));
    } catch (e) {
      final error = _handleErrors(e);
      return right(error);
    }
  }

  String _encode(String component) => Uri.encodeComponent(component);

  AppError _handleErrors(e) {
    if (e is SocketException) {
      return NoInternetError();
    }
    throw e;
  }
}

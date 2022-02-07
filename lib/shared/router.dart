import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/pages/movie_details/movie_details_page.dart';
import 'package:flutter_recruitment_task/pages/movie_list/movie_list_page.dart';
import 'package:flutter_recruitment_task/pages/two_buttons/two_buttons_page.dart';

class AppRoutes {
  static const String movieList = '/';
  static const String movieDetails = 'details';
  static const String twoButtons = 'two_buttons';
}

class AppRouter {
  static const initialRoute = AppRoutes.movieList;

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    try {
      if (settings.name == AppRoutes.movieList) {
        return MaterialPageRoute(builder: (context) => const MovieListPage());
      }

      if (settings.name == AppRoutes.movieDetails) {
        final args = settings.arguments as MovieDetailsPageArguments;

        return MaterialPageRoute(
          builder: (context) => MovieDetailsPage(args: args),
        );
      }

      if (settings.name == AppRoutes.twoButtons) {
        return MaterialPageRoute(builder: (context) => const TwoButtonsPage());
      }

      assert(false, 'No implement: ${settings.name}');
      return null;
    } on TypeError catch (e) {
      log(e.toString(), stackTrace: e.stackTrace);
      return null;
    }
  }
}

extension NavigatorExt on BuildContext {
  NavigatorState get router => Navigator.of(this);
}

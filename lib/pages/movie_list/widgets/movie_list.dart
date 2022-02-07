import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/movie_details_page.dart';
import 'package:flutter_recruitment_task/pages/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/movie_card.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_recruitment_task/shared/router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MovieListView extends StatefulWidget {
  final List<Movie> movies;
  final bool canLoadMore;

  MovieListView({required this.movies, required this.canLoadMore, Key? key})
      : super(key: key);

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  final refreshController = RefreshController();

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    ApiService().setLanguage(myLocale.languageCode);
    print('my locale ${myLocale}');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () async {
        if (!widget.canLoadMore) {
          refreshController.loadNoData();
          return;
        }

        await context.read<MovieListCubit>().loadMore();
        refreshController.loadComplete();
      },
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 1.0,
          color: Colors.grey.shade300,
        ),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final movie = widget.movies[index];
          final heroTag = "movieTitle${movie.id}";

          return MovieCard(
            heroTextTag: heroTag,
            title: movie.title,
            rating: '${(movie.voteAverage * 10).toInt()}%',
            onTap: () => context.router.pushNamed(
              AppRoutes.movieDetails,
              arguments: MovieDetailsPageArguments(
                movie,
                heroTag,
              ),
            ),
          );
        },
        itemCount: widget.movies.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/utils/dimensions.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;
  const MovieDetails({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieDetails = _movieDetails(context, movie);

    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        color: Colors.grey.shade300,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(Dimensions.PADDING_M),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              movieDetails[index].title,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: Dimensions.PADDING_S),
            Text(
              movieDetails[index].content,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      itemCount: movieDetails.length,
    );
  }

  static List<_MovieDetail> _movieDetails(BuildContext context, Movie movie) {
    return [
      if (movie.budget != null)
        _MovieDetail(
            title: context.strings.budget,
            content: context.strings.dolarPrefix(movie.budget.toString())),
      if (movie.revenue != null)
        _MovieDetail(
            title: context.strings.revenue,
            content: context.strings.dolarPrefix(movie.revenue.toString())),
      _MovieDetail(
          title: context.strings.shouldWatchToday,
          content:
              movie.shouldWatch() ? context.strings.yes : context.strings.no),
    ];
  }
}

class _MovieDetail {
  final String title;
  final String content;
  final Key? key;

  _MovieDetail({
    required this.title,
    required this.content,
    this.key,
  });
}

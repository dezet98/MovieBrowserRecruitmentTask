import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/models/movie.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;
  const MovieDetails({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieDetails = _movieDetails(movie);

    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        color: Colors.grey.shade300,
      ),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              movieDetails[index].title,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 8.0),
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

  static List<_MovieDetail> _movieDetails(Movie movie) {
    return [
      if (movie.budget != null)
        _MovieDetail(title: 'Budget', content: '\$${movie.budget}'),
      if (movie.revenue != null)
        _MovieDetail(title: 'Revenue', content: '\$${movie.revenue}'),
      _MovieDetail(
          title: 'Should I watch it today?',
          content: movie.shouldWatch() ? 'Yes!' : "No!"),
    ];
  }
}

class _MovieDetail {
  final String title;
  final String content;

  _MovieDetail({
    required this.title,
    required this.content,
  });
}

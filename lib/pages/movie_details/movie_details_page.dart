import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/move_details.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';

class MovieDetailsPageArguments {
  final Movie movie;

  const MovieDetailsPageArguments(this.movie);
}

class MovieDetailsPage extends StatefulWidget {
  final Movie movie;

  const MovieDetailsPage({required this.movie});

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  final apiService = ApiService();
  late Future<Movie> _movie;

  @override
  void initState() {
    _movie = apiService.getMovieDetails(widget.movie.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Hero(
            tag: "movieTitle${widget.movie.id}",
            child: Material(
              type: MaterialType.transparency,
              child: Text(
                widget.movie.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        body: _buildContent(),
      );

  Widget _buildContent() => FutureBuilder<Movie>(
      future: _movie,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData) {
          return MovieDetails(movie: snapshot.data!);
        }

        return Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Text(snapshot.error.toString()),
        );
      });
}

import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_list.dart';
import 'package:flutter_recruitment_task/pages/movie_details/movie_details_page.dart';
import 'package:flutter_recruitment_task/pages/movie_list/movie_card.dart';
import 'package:flutter_recruitment_task/pages/movie_list/search_box.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_recruitment_task/shared/router.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPage createState() => _MovieListPage();
}

class _MovieListPage extends State<MovieListPage> {
  final apiService = ApiService();

  Future<List<Movie>> _movieList = Future.value([]);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.movie_creation_outlined),
              onPressed: () {
                //TODO implement navigation
              },
            ),
          ],
          title: Text('Movie Browser'),
        ),
        body: Column(
          children: <Widget>[
            SearchBox(onSubmitted: _onSearchBoxSubmitted),
            Expanded(child: _buildContent()),
          ],
        ),
      );

  Widget _buildContent() => FutureBuilder<List<Movie>>(
      future: _movieList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(snapshot.error.toString()),
          );
        }
        return _buildMoviesList(
          (snapshot.data ?? [])..sort(MovieList.compareVoteAverage),
        );
      });

  Widget _buildMoviesList(List<Movie> movies) => ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 1.0,
          color: Colors.grey.shade300,
        ),
        itemBuilder: (context, index) => MovieCard(
          id: movies[index].id,
          title: movies[index].title,
          rating: '${(movies[index].voteAverage * 10).toInt()}%',
          onTap: () => context.router.pushNamed(
            AppRoutes.movieDetails,
            arguments: MovieDetailsPageArguments(movies[index]),
          ),
        ),
        itemCount: movies.length,
      );

  void _onSearchBoxSubmitted(String text) {
    setState(() {
      if (text.isNotEmpty) {
        _movieList = apiService.searchMovies(text);
      } else {
        _movieList = Future.value([]);
      }
    });
  }
}

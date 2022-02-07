import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/components/error_component.dart';
import 'package:flutter_recruitment_task/components/loading_component.dart';
import 'package:flutter_recruitment_task/pages/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/movie_list.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/search_box.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_recruitment_task/shared/router.dart';
import 'package:flutter_recruitment_task/utils/dimensions.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MovieListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.movie_creation_outlined),
              onPressed: () {
                context.router.pushNamed(AppRoutes.twoButtons);
              },
            ),
          ],
          title: Text(context.strings.movieListTitle),
        ),
        body: BlocProvider<MovieListCubit>(
          create: (context) => MovieListCubit(ApiService()),
          child: Column(
            children: <Widget>[
              SearchBox(),
              Expanded(child: _MovieList()),
            ],
          ),
        ),
      );
}

class _MovieList extends StatelessWidget {
  final refreshController = RefreshController();

  _MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MovieListCubit, MovieListState>(
        builder: (context, state) => state.map(
          loading: (_) => LoadingComponent(),
          loadFailure: (failureState) => ErrorComponent(
            exception: failureState.error,
            onRetry: () =>
                context.read<MovieListCubit>().loadMovies(state.query),
          ),
          loadSuccess: (successState) => MovieListView(
            movies: successState.movies,
            canLoadMore: successState.canLoadMore,
          ),
          empty: (_) => _empty(context),
          initial: (_) => _initial(context),
        ),
      );

  Widget _empty(BuildContext context) => Container(
        padding: EdgeInsets.all(Dimensions.PADDING_M),
        alignment: Alignment.center,
        child: Text(context.strings.noResults),
      );

  Widget _initial(BuildContext context) => Container(
        padding: EdgeInsets.all(Dimensions.PADDING_M),
        alignment: Alignment.center,
        child: Text(context.strings.movieListInitial),
      );
}

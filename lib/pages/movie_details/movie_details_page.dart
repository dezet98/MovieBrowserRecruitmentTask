import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/components/error_component.dart';
import 'package:flutter_recruitment_task/components/loading_component.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/cubit/movie_details_cubit.dart';
import 'package:flutter_recruitment_task/pages/movie_details/widgets/move_details.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';

class MovieDetailsPageArguments {
  final Movie movie;
  final String textHeroTag;

  const MovieDetailsPageArguments(this.movie, this.textHeroTag);
}

class MovieDetailsPage extends StatelessWidget {
  final MovieDetailsPageArguments args;

  const MovieDetailsPage({required this.args, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<MovieDetailsCubit>(
        create: (context) => MovieDetailsCubit(ApiService(), movie: args.movie),
        child: Scaffold(
          appBar: AppBar(
            title: _MovieTitle(heroTag: args.textHeroTag),
          ),
          body: const _MovieView(),
        ),
      );
}

class _MovieView extends StatelessWidget {
  const _MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: _buildFromState(context, state),
      ),
    );
  }

  Widget _buildFromState(BuildContext context, MovieDetailsState state) =>
      state.maybeWhen(
        loadSuccess: (movie) => MovieDetails(movie: state.movie),
        loadFailure: (_, error) => ErrorComponent(
          error: error,
          onRetry: () => context.read<MovieDetailsCubit>().load(),
        ),
        orElse: () => const LoadingComponent(),
      );
}

class _MovieTitle extends StatelessWidget {
  final String heroTag;

  const _MovieTitle({required this.heroTag, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieTitle =
        context.select((MovieDetailsCubit cubit) => cubit.state.movie.title);

    return Hero(
      tag: heroTag,
      child: Material(
        type: MaterialType.transparency,
        child: Text(
          movieTitle,
          style: Theme.of(context).textTheme.headline6,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

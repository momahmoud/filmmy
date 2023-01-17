import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tawasel/movie/presentation/widgets/movie_card_widget.dart';

import '../../../core/utils/enums.dart';
import '../controllers/bloc/movie/movie_bloc.dart';
import '../controllers/bloc/movie/movie_states.dart';

class TrendingMoviesWidget extends StatelessWidget {
  const TrendingMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesStates>(
      buildWhen: (previous, current) =>
          previous.trendingStates != current.trendingStates,
      builder: (context, state) {
        switch (state.trendingStates) {
          case RequestStates.loading:
            return const SizedBox(
              height: 350,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case RequestStates.loaded:
            return MovieCardWidget(
              movies: state.trendingMovies,
              itemCount: state.trendingMovies.length,
            );
          case RequestStates.error:
            return SizedBox(
              height: 350,
              child: Center(
                child: Text(state.trendingMovieMessage),
              ),
            );
        }
      },
    );
  }
}

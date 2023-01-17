import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shimmer/shimmer.dart';
import 'package:tawasel/movie/presentation/screens/movie_detail_screen.dart';
import 'package:tawasel/movie/presentation/widgets/movie_card_widget.dart';

import '../../../core/utils/app_constants.dart';

import '../../../core/utils/enums.dart';
import '../controllers/bloc/movie/movie_bloc.dart';
import '../controllers/bloc/movie/movie_states.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesStates>(
      buildWhen: (previous, current) =>
          previous.popularStates != current.popularStates,
      builder: (context, state) {
        switch (state.popularStates) {
          case RequestStates.loading:
            return const SizedBox(
              height: 350,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case RequestStates.loaded:
            return MovieCardWidget(
              movies: state.popularMovies,
              itemCount: state.popularMovies.length,
            );
          case RequestStates.error:
            return SizedBox(
              height: 350,
              child: Center(
                child: Text(state.popularMovieMessage),
              ),
            );
        }
      },
    );
  }
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tawasel/core/usecases/base_use_case.dart';
import 'package:tawasel/core/utils/enums.dart';
import 'package:tawasel/movie/domain/use_cases/popular_usecase.dart';
import 'package:tawasel/movie/domain/use_cases/top_rated_usecase.dart';
import 'package:tawasel/movie/domain/use_cases/trending_movies_use_case.dart';

import '../../../../domain/use_cases/now_playing_usecase.dart';

import 'movie_events.dart';
import 'movie_states.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesStates> {
  final NowPlayingUseCase nowPlayingUseCase;
  final PopularUseCase popularUseCase;
  final TopRatedUseCase topRatedUseCase;
  final TrendingMoviesUseCase trendingMoviesUseCase;
  MoviesBloc(
    this.nowPlayingUseCase,
    this.popularUseCase,
    this.topRatedUseCase,
    this.trendingMoviesUseCase,
  ) : super(const MoviesStates()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
    on<GetTrendingMoviesEvent>(_getTrendingMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
    GetNowPlayingMoviesEvent event,
    Emitter<MoviesStates> emit,
  ) async {
    final result = await nowPlayingUseCase(const NoParameters());
    result.fold(
      (l) => emit(
        state.copyWith(
            nowPlayingStates: RequestStates.error,
            nowPlayingMovieMessage: l.errorMessage),
      ),
      (r) => emit(
        state.copyWith(
          nowPlayingMovies: r,
          nowPlayingStates: RequestStates.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesStates> emit) async {
    final result = await popularUseCase(const NoParameters());
    result.fold(
      (l) => emit(
        state.copyWith(
            popularStates: RequestStates.error,
            popularMovieMessage: l.errorMessage),
      ),
      (r) => emit(
        state.copyWith(
          popularMovies: r,
          popularStates: RequestStates.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesStates> emit) async {
    final result = await topRatedUseCase(const NoParameters());

    result.fold(
      (l) => emit(
        state.copyWith(
            topRatedStates: RequestStates.error,
            topRatedMovieMessage: l.errorMessage),
      ),
      (r) => emit(
        state.copyWith(
          topRatedMovies: r,
          topRatedStates: RequestStates.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getTrendingMovies(
      GetTrendingMoviesEvent event, Emitter<MoviesStates> emit) async {
    final result = await trendingMoviesUseCase();

    result.fold(
      (l) => emit(
        state.copyWith(
            trendingStates: RequestStates.error,
            trendingMovieMessage: l.errorMessage),
      ),
      (r) => emit(
        state.copyWith(
          trendingMovies: r,
          trendingStates: RequestStates.loaded,
        ),
      ),
    );
  }
}

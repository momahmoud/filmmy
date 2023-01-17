import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tawasel/core/utils/enums.dart';
import 'package:tawasel/movie/domain/entities/movie_details.dart';
import 'package:tawasel/movie/domain/use_cases/movie_details_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/recommendation_movies_use_case.dart';

import '../../../../domain/entities/recommendation.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.movieDetailsUseCase, this.recommendationMoviesUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationsEvent>(_getMovieRecommendation);
  }

  final MovieDetailsUseCase movieDetailsUseCase;
  final RecommendationMoviesUseCase recommendationMoviesUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await movieDetailsUseCase(
      MovieDetailsParameters(event.id),
    );
    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsRequestStates: RequestStates.error,
        movieDetailsMessage: l.errorMessage,
      )),
      (r) => emit(state.copyWith(
        movieDetails: r,
        movieDetailsRequestStates: RequestStates.loaded,
      )),
    );
  }

  FutureOr<void> _getMovieRecommendation(GetMovieRecommendationsEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await recommendationMoviesUseCase(
      RecommendationParameters(event.id),
    );
    result.fold(
      (l) => emit(state.copyWith(
        recommendationRequestStates: RequestStates.error,
        recommendationMessage: l.errorMessage,
      )),
      (r) => emit(state.copyWith(
        recommendation: r,
        recommendationRequestStates: RequestStates.loaded,
      )),
    );
  }
}

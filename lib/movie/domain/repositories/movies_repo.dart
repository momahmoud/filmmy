import 'package:dartz/dartz.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';
import 'package:tawasel/movie/domain/entities/movie_details.dart';
import 'package:tawasel/movie/domain/entities/recommendation.dart';
import 'package:tawasel/movie/domain/use_cases/movie_details_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/recommendation_movies_use_case.dart';

import '../../../core/app_exceptions/failure.dart';

abstract class MoviesRepo {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> getTrendingMovies();
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters);
  Future<Either<Failure, List<Recommendation>>> getRecommendationMovies(
      RecommendationParameters parameters);
}

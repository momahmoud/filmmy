import 'package:dartz/dartz.dart';
import 'package:tawasel/core/app_exceptions/app_exception.dart';
import 'package:tawasel/core/app_exceptions/failure.dart';
import 'package:tawasel/movie/data/data_sources/movie_remote_data_source.dart';

import 'package:tawasel/movie/domain/entities/movie.dart';
import 'package:tawasel/movie/domain/entities/recommendation.dart';

import 'package:tawasel/movie/domain/repositories/movies_repo.dart';
import 'package:tawasel/movie/domain/use_cases/movie_details_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/recommendation_movies_use_case.dart';

import '../../domain/entities/movie_details.dart';

class MoviesRepoImpl extends MoviesRepo {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepoImpl(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(RemoteDataFailure(e.networkErrorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(RemoteDataFailure(e.networkErrorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(RemoteDataFailure(e.networkErrorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(RemoteDataFailure(e.networkErrorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendationMovies(
      RecommendationParameters parameters) async {
    final result =
        await baseMovieRemoteDataSource.getRecommendationMovies(parameters);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        RemoteDataFailure(e.networkErrorModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() async {
    final result = await baseMovieRemoteDataSource.getTrendingMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(RemoteDataFailure(e.networkErrorModel.statusMessage));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:tawasel/core/network/api_constants.dart';

import 'package:tawasel/core/network/network_error_model.dart';
import 'package:tawasel/core/utils/app_constants.dart';
import 'package:tawasel/movie/data/models/movie_details_model.dart';
import 'package:tawasel/movie/data/models/movie_model.dart';
import 'package:tawasel/movie/data/models/recommendation_model.dart';

import 'package:tawasel/movie/domain/use_cases/movie_details_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/recommendation_movies_use_case.dart';

import '../../../core/app_exceptions/app_exception.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTrendingMovies();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);
  Future<List<RecommendationModel>> getRecommendationMovies(
      RecommendationParameters parameters);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  Future<List<MovieModel>> _baseGetMovies(String endPoint) async {
    final response = await Dio().get(endPoint);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (e) => MovieModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        networkErrorModel: NetworkErrorModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    return await _baseGetMovies(ApiConstants.nowPlayingMoviesEndPoint);
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    return await _baseGetMovies(ApiConstants.popularMoviesEndPoint);
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    return await _baseGetMovies(ApiConstants.topRatedMoviesEndPoint);
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.movieDetailsEndPoint(parameters.movieId));
    print(response);
    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
        networkErrorModel: NetworkErrorModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<RecommendationModel>> getRecommendationMovies(
      RecommendationParameters parameters) async {
    final response = await Dio()
        .get(ApiConstants.recommendationEndPoint(parameters.movieId));

    if (response.statusCode == 200) {
      return List<RecommendationModel>.from(
        (response.data['results'] as List).map(
          (e) => RecommendationModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        networkErrorModel: NetworkErrorModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTrendingMovies() async {
    return await _baseGetMovies(ApiConstants.trendingMoviesEndPoint);
  }
}

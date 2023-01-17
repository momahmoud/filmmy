import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tawasel/movie/domain/entities/recommendation.dart';

import '../../../core/app_exceptions/failure.dart';
import '../../../core/usecases/base_use_case.dart';

import '../repositories/movies_repo.dart';

class RecommendationMoviesUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  final MoviesRepo moviesRepo;

  RecommendationMoviesUseCase(this.moviesRepo);
  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameters parameters) async {
    return await moviesRepo.getRecommendationMovies(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int movieId;

  const RecommendationParameters(
    this.movieId,
  );

  @override
  List<Object?> get props => [
        movieId,
      ];
}

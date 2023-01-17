import 'package:equatable/equatable.dart';
import 'package:tawasel/core/app_exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tawasel/core/usecases/base_use_case.dart';

import 'package:tawasel/movie/domain/entities/movie_details.dart';
import 'package:tawasel/movie/domain/repositories/movies_repo.dart';

class MovieDetailsUseCase
    extends BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final MoviesRepo moviesRepo;

  MovieDetailsUseCase(this.moviesRepo);
  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameters parameters) async {
    return await moviesRepo.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters(
    this.movieId,
  );

  @override
  List<Object?> get props => [
        movieId,
      ];
}

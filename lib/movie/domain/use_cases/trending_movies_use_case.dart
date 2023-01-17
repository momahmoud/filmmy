import 'package:dartz/dartz.dart';
import 'package:tawasel/core/app_exceptions/failure.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';
import 'package:tawasel/movie/domain/repositories/movies_repo.dart';

class TrendingMoviesUseCase {
  final MoviesRepo moviesRepo;

  TrendingMoviesUseCase({required this.moviesRepo});

  Future<Either<Failure, List<Movie>>> call() async {
    return await moviesRepo.getTrendingMovies();
  }
}

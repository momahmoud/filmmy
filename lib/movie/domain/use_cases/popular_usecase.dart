import 'package:dartz/dartz.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';
import 'package:tawasel/movie/domain/repositories/movies_repo.dart';

import '../../../core/app_exceptions/failure.dart';
import '../../../core/usecases/base_use_case.dart';

class PopularUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final MoviesRepo moviesRepo;

  PopularUseCase(this.moviesRepo);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await moviesRepo.getPopularMovies();
  }
}

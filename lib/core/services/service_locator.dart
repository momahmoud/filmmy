import 'package:get_it/get_it.dart';
import 'package:tawasel/movie/data/data_sources/movie_remote_data_source.dart';
import 'package:tawasel/movie/data/repositories/movies_repo_impl.dart';
import 'package:tawasel/movie/domain/repositories/movies_repo.dart';
import 'package:tawasel/movie/domain/use_cases/movie_details_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/now_playing_usecase.dart';
import 'package:tawasel/movie/domain/use_cases/popular_usecase.dart';
import 'package:tawasel/movie/domain/use_cases/recommendation_movies_use_case.dart';
import 'package:tawasel/movie/domain/use_cases/top_rated_usecase.dart';
import 'package:tawasel/movie/domain/use_cases/trending_movies_use_case.dart';

import '../../movie/presentation/controllers/bloc/movie/movie_bloc.dart';
import '../../movie/presentation/controllers/bloc/movie_details/movie_details_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //blocs
    sl.registerFactory<MoviesBloc>(() => MoviesBloc(sl(), sl(), sl(), sl()));
    sl.registerFactory<MovieDetailsBloc>(() => MovieDetailsBloc(sl(), sl()));

    // data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    // repo
    sl.registerLazySingleton<MoviesRepo>(() => MoviesRepoImpl(sl()));

    // use cases
    sl.registerLazySingleton(() => NowPlayingUseCase(sl()));
    sl.registerLazySingleton(() => PopularUseCase(sl()));
    sl.registerLazySingleton(() => TopRatedUseCase(sl()));
    sl.registerLazySingleton(() => TrendingMoviesUseCase(moviesRepo: sl()));
    sl.registerLazySingleton(() => MovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => RecommendationMoviesUseCase(sl()));
  }
}

import 'package:equatable/equatable.dart';
import 'package:tawasel/core/utils/enums.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';

class MoviesStates extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestStates nowPlayingStates;
  final String nowPlayingMovieMessage;
  final List<Movie> popularMovies;
  final RequestStates popularStates;
  final String popularMovieMessage;
  final List<Movie> topRatedMovies;
  final RequestStates topRatedStates;
  final String topRatedMovieMessage;
  final List<Movie> trendingMovies;
  final RequestStates trendingStates;
  final String trendingMovieMessage;

  const MoviesStates(
      {this.nowPlayingMovies = const [],
      this.nowPlayingStates = RequestStates.loading,
      this.nowPlayingMovieMessage = '',
      this.popularMovies = const [],
      this.popularStates = RequestStates.loading,
      this.popularMovieMessage = '',
      this.topRatedMovies = const [],
      this.topRatedMovieMessage = '',
      this.topRatedStates = RequestStates.loading,
      this.trendingMovieMessage = '',
      this.trendingMovies = const [],
      this.trendingStates = RequestStates.loading});

  MoviesStates copyWith({
    List<Movie>? nowPlayingMovies,
    RequestStates? nowPlayingStates,
    String? nowPlayingMovieMessage,
    List<Movie>? popularMovies,
    RequestStates? popularStates,
    String? popularMovieMessage,
    List<Movie>? topRatedMovies,
    RequestStates? topRatedStates,
    String? topRatedMovieMessage,
    List<Movie>? trendingMovies,
    RequestStates? trendingStates,
    String? trendingMovieMessage,
  }) {
    return MoviesStates(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingStates: nowPlayingStates ?? this.nowPlayingStates,
      nowPlayingMovieMessage:
          nowPlayingMovieMessage ?? this.nowPlayingMovieMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedStates: topRatedStates ?? this.topRatedStates,
      topRatedMovieMessage: topRatedMovieMessage ?? this.topRatedMovieMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularStates: popularStates ?? this.popularStates,
      popularMovieMessage: popularMovieMessage ?? this.popularMovieMessage,
      trendingMovies: trendingMovies ?? this.trendingMovies,
      trendingStates: trendingStates ?? this.trendingStates,
      trendingMovieMessage: trendingMovieMessage ?? this.trendingMovieMessage,
    );
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingStates,
        nowPlayingMovieMessage,
        popularMovieMessage,
        popularMovies,
        popularStates,
        topRatedMovieMessage,
        topRatedMovies,
        topRatedStates,
        trendingMovieMessage,
        trendingMovies,
        trendingStates
      ];
}

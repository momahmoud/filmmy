import 'package:equatable/equatable.dart';
import 'package:tawasel/movie/domain/entities/categories.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final int id;
  final String overview;
  final String releaseDate;
  final String title;
  final String status;
  final double voteAverage;
  final int runtime;
  final List<Categories> categories;

  const MovieDetails({
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.runtime,
    required this.categories,
    required this.status,
  });

  @override
  List<Object> get props => [
        backdropPath,
        id,
        overview,
        releaseDate,
        title,
        voteAverage,
        runtime,
        categories,
        status,
      ];
}

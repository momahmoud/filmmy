import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genderId;
  final String overview;
  final double voteAverage;
  final String releaseDate;
  final double popularity;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genderId,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
    required this.popularity,
  });

  @override
  List<Object> get props => [
        id,
        title,
        backdropPath,
        genderId,
        overview,
        voteAverage,
        releaseDate,
        popularity
      ];

  multiply(int a, int b) => a * b;
}

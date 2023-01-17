import 'package:tawasel/movie/data/models/categories_model.dart';

import 'package:tawasel/movie/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.title,
    required super.voteAverage,
    required super.runtime,
    required super.categories,
    required super.status,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json['id'],
      title: json['title'],
      status: json['status'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      categories: List<CategoriesModel>.from(
          json['genres'].map((x) => CategoriesModel.fromJson(x))),
    );
  }
}

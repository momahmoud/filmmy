import 'package:tawasel/movie/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      id: json['id'],
      backdropPath: json['backdrop_path'] ?? "/jazlkwXfw4KdF6fVTRsolOvRCmu.jpg",
    );
  }
}

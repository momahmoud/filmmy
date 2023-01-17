import '../../domain/entities/categories.dart';

class CategoriesModel extends Categories {
  const CategoriesModel({
    required super.id,
    required super.name,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id'],
      name: json['name'],
    );
  }
}

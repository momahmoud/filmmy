class AppConstants {
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500/';

  static String imageUrl(String path) {
    return '$baseImageUrl$path';
  }
}

class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'f7bbbb0dad68d35380a3e4c2cc2f0962';

  static const String nowPlayingMoviesEndPoint =
      '$baseUrl/movie/now_playing?api_key=$apiKey';

  static const String topRatedMoviesEndPoint =
      '$baseUrl/movie/top_rated?api_key=$apiKey';

  static const String popularMoviesEndPoint =
      '$baseUrl/movie/popular?api_key=$apiKey';

  static const String trendingMoviesEndPoint =
      '$baseUrl/trending/movie/week?api_key=$apiKey';

  static String movieDetailsEndPoint(int movieId) =>
      '$baseUrl/movie/$movieId?api_key=$apiKey';

  static String recommendationEndPoint(int movieId) =>
      '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
}

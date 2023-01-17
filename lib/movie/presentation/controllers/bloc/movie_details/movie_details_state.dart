part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetails,
    this.movieDetailsRequestStates = RequestStates.loading,
    this.movieDetailsMessage = '',
    this.recommendation,
    this.recommendationRequestStates = RequestStates.loading,
    this.recommendationMessage = '',
  });

  final MovieDetails? movieDetails;
  final RequestStates movieDetailsRequestStates;
  final String movieDetailsMessage;
  final List<Recommendation>? recommendation;
  final RequestStates recommendationRequestStates;
  final String recommendationMessage;

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailsRequestStates,
        movieDetailsMessage,
        recommendation
      ];

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestStates? movieDetailsRequestStates,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestStates? recommendationRequestStates,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
        movieDetails: movieDetails ?? this.movieDetails,
        movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
        movieDetailsRequestStates:
            movieDetailsRequestStates ?? this.movieDetailsRequestStates,
        recommendation: recommendation ?? this.recommendation,
        recommendationMessage:
            recommendationMessage ?? this.recommendationMessage,
        recommendationRequestStates:
            recommendationRequestStates ?? this.recommendationRequestStates);
  }
}

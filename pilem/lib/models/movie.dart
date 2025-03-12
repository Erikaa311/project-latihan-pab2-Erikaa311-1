class Movie {
  final int id;
  final String title;
  final String overview;
  final String? posterPath; // Bisa null
  final String? backdropPath; // Bisa null
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    this.posterPath, // Tidak wajib karena bisa null
    this.backdropPath, // Tidak wajib karena bisa null
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] ?? 0, // Jika null, beri default 0
      title: json['title'] ?? 'No Title', // Jika null, beri default
      overview: json['overview'] ?? 'No overview available',
      posterPath: json['poster_path'] as String?, // Bisa null
      backdropPath: json['backdrop_path'] as String?, // Bisa null
      releaseDate: json['release_date'] ?? 'Unknown', // Jika null, beri default
      voteAverage: (json['vote_average'] ?? 0).toDouble(), // Jika null, beri 0.0
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
      'release_date': releaseDate,
      'vote_average': voteAverage,
    };
  }
}

class Movie {
    final String title;
    final String year;
    final String posterPath;
    final List<String> cast;
    final String synopsis;

    Movie({
        required this.title,
        required this.year,
        required this.posterPath,
        required this.cast,
        required this.synopsis,
    });
}
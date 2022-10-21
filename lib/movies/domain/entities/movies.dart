import 'package:equatable/equatable.dart';

class Movies extends Equatable{
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overView;
  final double voteAverage;
  final String releaseDate;

  const Movies(
      this.id,
      this.title,
      this.backdropPath,
      this.genreIds,
      this.overView,
      this.voteAverage,
      this.releaseDate
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    title,
    backdropPath,
    genreIds,
    overView,
    voteAverage,
    releaseDate
  ];
}

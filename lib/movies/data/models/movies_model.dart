// ignore_for_file: prefer_const_constructors_in_immutables

import '../../domain/entities/movies.dart';

class MoviesModel extends Movies {
  MoviesModel(super.id, super.title, super.backdropPath, super.genreIds,
      super.overView, super.voteAverage, super.releaseDate);

  factory MoviesModel.fromJson(Map<String, dynamic> jeson) {
    return MoviesModel(
        jeson['id'],
        jeson['title'],
        jeson['backdrop_path'],
        List<int>.from(jeson['genre_ids'].map((e) => e)),
        jeson['overview'],
        jeson['vote_average'],
        jeson['release_date']);
  }
}

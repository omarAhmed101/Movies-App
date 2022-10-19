import '../entities/movies.dart';

abstract class BaseMoviesRepository{
  Future<List<Movies>>getPlayNow();
  Future<List<Movies>>getPopular();
  Future<List<Movies>>getTopRated();

}
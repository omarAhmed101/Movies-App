import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';

import '../entities/movies.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure,List<Movies>>>getPlayNowMovies();
  Future<Either<Failure,List<Movies>>>getPopularMovies();
  Future<Either<Failure,List<Movies>>>getTopRatedMovies();

}
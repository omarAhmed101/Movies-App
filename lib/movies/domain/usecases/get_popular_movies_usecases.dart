// ignore_for_file: camel_case_types
import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class getPopularMoviesUseCases{
 BaseMoviesRepository baseMoviesRepository;
 getPopularMoviesUseCases(this.baseMoviesRepository);

 Future<Either<Failure,List<Movies>>>method()async{
   return await baseMoviesRepository.getPopularMovies();
 }
}
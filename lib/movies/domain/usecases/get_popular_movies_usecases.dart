// ignore_for_file: camel_case_types
import 'package:movies_app/movies/domain/entities/movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class getPopularMoviesUseCases{
 BaseMoviesRepository baseMoviesRepository;
 getPopularMoviesUseCases(this.baseMoviesRepository);

 Future<List<Movies>>method()async{
   return await baseMoviesRepository.getPopular();
 }
}
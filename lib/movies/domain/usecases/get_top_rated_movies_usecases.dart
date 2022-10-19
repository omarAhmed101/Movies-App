// ignore_for_file: camel_case_types
import 'package:movies_app/movies/domain/entities/movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
class getTopRatedMoviesUseCases{
 BaseMoviesRepository baseMoviesRepository;
 getTopRatedMoviesUseCases(this.baseMoviesRepository);

 Future<List<Movies>>method()async{
   return await baseMoviesRepository.getTopRated();
 }
}
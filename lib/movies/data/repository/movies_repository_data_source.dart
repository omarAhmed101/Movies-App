import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import '../../../core/error/error_exception.dart';
import '../data_source/movies_remote_data_source.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;
  MoviesRepository(this.baseMoviesRemoteDataSource);

  @override
  Future<Either<Failure, List<Movies>>> getPlayNowMovies() async {
    final dynamic result = await baseMoviesRemoteDataSource.getNowPlayingMoviesData();
    try {
      return Right(result);
    } on ErrorException catch (a) {
      return Left(ServerFailure(a.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getPopularMovies()async {
    final result= await baseMoviesRemoteDataSource.getPopularMoviesData();
    try{
      return Right(result);
    }on ErrorException catch(failure)
    {
      return Left(ServerFailure(failure.errorMessageModel.message));
    }

  }

  @override
  Future<Either<Failure, List<Movies>>> getTopRatedMovies()async {
   final result= await baseMoviesRemoteDataSource.getTopRatedMoviesData();
   try{
     return Right(result);
   } on ErrorException catch(failure)
   {
     return Left(ServerFailure(failure.errorMessageModel.message));
   }
  }
}

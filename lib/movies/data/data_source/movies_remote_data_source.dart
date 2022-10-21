import 'package:dio/dio.dart';
import 'package:movies_app/core/error/error_exception.dart';
import 'package:movies_app/core/error/error_message_model.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';

import '../../../core/utils/app_constants.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMoviesData();
  Future<List<MoviesModel>> getPopularMoviesData();
  Future<List<MoviesModel>> getTopRatedMoviesData();
}

class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMoviesData() async {
    final response = await Dio().get(ApiConstants.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw (ErrorException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMoviesData() async {
    final response = await Dio().get(ApiConstants.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw (ErrorException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMoviesData() async {
    final response = await Dio().get(ApiConstants.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw (ErrorException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)));
    }
  }
}

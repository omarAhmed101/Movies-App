// ignore_for_file: non_constant_identifier_names


class ApiConstants{
  static  const String baseUrl='https://api.themoviedb.org/3';
  static  const String apiKey='c3435cfe40aeb079689227d82bf921d3';
  static String nowPlayingMoviesPath="$baseUrl/movie/now_playing?api_key=$apiKey";

  static String popularMoviesPath="$baseUrl/movie/popular?api_key=$apiKey";

  static String topRatedMoviesPath="$baseUrl/movie/top_rated?api_key=$apiKey";


}

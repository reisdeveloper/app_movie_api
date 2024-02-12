import 'package:app_movie_api/core/config/factories/api_repository_factory.dart';
import 'package:provider/provider.dart';

class MoviesAppInitialBindings {
  static final MoviesAppInitialBindings _singleton =
      MoviesAppInitialBindings._internal();

  factory MoviesAppInitialBindings() {
    return _singleton;
  }

  MoviesAppInitialBindings._internal();

  static List<Provider> dependecies() {
    return [
      makeApiRepository,
    ];
  }
}

import 'package:app_movie_api/core/config/movies_colors.dart';
import 'package:flutter/material.dart';

class MoviesMaterialApp {
  static final MoviesMaterialApp _singleton = MoviesMaterialApp._internal();

  factory MoviesMaterialApp() {
    return _singleton;
  }

  MoviesMaterialApp._internal();

  static const String title = 'Movies App API';
  static const Locale locale = Locale('pt_BR');
  static ThemeData get getTheme => ThemeData(
        scaffoldBackgroundColor: MoviesAppColors.primaryColor,
        primaryColor: MoviesAppColors.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: MoviesAppColors.primaryColor,
          titleTextStyle: TextStyle(
            color: MoviesAppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        fontFamily: 'Lato',
      );
}

import 'package:app_movie_api/core/config/movies_colors.dart';
import 'package:flutter/material.dart';

class Moviesapptextstyle {
  static final Moviesapptextstyle _singleton = Moviesapptextstyle._internal();

  factory Moviesapptextstyle() {
    return _singleton;
  }

  Moviesapptextstyle._internal();

  static TextStyle get getNormalStyle => TextStyle(
        color: MoviesAppColors.whiteColor,
        fontSize: 14,
      );

  static TextStyle get getNormalBoldStyle => getNormalStyle.copyWith(
        fontWeight: FontWeight.bold,
      );
  static TextStyle get getTitleSytle => getNormalBoldStyle.copyWith(
        fontSize: 24,
      );
  static TextStyle get getSmallStyle => getNormalStyle.copyWith(
        fontSize: 12,
      );
}

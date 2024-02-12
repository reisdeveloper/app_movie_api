import 'package:flutter/material.dart';

class MoviesAppColors {
  static final MoviesAppColors _sigleton = MoviesAppColors._internal();

  factory MoviesAppColors() => _sigleton;

  MoviesAppColors._internal();

  static Color get primaryColor => const Color(0xFF000000);
  static Color get secondaryColor => const Color(0xFF2962ff);
  static Color get errorColor => const Color(0xFFdc3545);
  static Color get favoriteColor => Colors.redAccent;
  static Color get whiteColor => const Color(0xFFFFFFFF);
  static Color get sucessColor => Colors.green;
}

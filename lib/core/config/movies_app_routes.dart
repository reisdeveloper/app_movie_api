import 'package:app_movie_api/presetation/login/screens/login_screen.dart';
import 'package:app_movie_api/presetation/movie_details/screens/movie_details_screen.dart';
import 'package:app_movie_api/presetation/nav/screens/nav_screen.dart';
import 'package:app_movie_api/presetation/signup/screens/signup_screen.dart';
import 'package:app_movie_api/presetation/splash_screen/splash_screnn.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    NamedRoutes.splash: (_) => const SplashScreen(),
    NamedRoutes.login: (_) => const LoginScreen(),
    NamedRoutes.signup: (_) => const SignUpScreen(),
    NamedRoutes.nav: (_) => const NavScreen(),
    NamedRoutes.moviedetails: (_) => const MovieDetailsScreen()
  };
}

class NamedRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String nav = '/nav';
  static const String moviedetails = '/movie-details';
}

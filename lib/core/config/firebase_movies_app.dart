
import 'package:app_movie_api/core/config/factories/api_repository_factory.dart';

import 'package:app_movie_api/core/config/movies_app_routes.dart';
import 'package:app_movie_api/core/config/movies_material_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FireBaseMoviesApp extends StatelessWidget {
  const FireBaseMoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [makeApiRepository],
       child: MaterialApp(
        title: MoviesMaterialApp.title,
        theme: MoviesMaterialApp.getTheme,
        initialRoute: NamedRoutes.splash,
        routes: Routes.routes,
        debugShowCheckedModeBanner: false,
       ),
    );
  }
}
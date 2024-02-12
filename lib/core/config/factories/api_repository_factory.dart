import 'package:app_movie_api/core/data/repositories/api_repository/dio/dio_repositorie.dart';
import 'package:app_movie_api/core/data/repositories/api_repository/i_api_repository.dart';
import 'package:app_movie_api/core/services/dot_env_services.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

final makeApiRepository = Provider<IApiRepository>(
  create: (_) => DioRepositorieImpl(
    Dio(
      BaseOptions(
        baseUrl: DotEnvServices.getApiBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    ),
  ),
);

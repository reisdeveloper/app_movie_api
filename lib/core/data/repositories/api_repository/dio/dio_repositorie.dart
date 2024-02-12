import 'package:app_movie_api/core/const/erros_const.dart';
import 'package:app_movie_api/core/data/models/api_response_model.dart';
import 'package:app_movie_api/core/data/repositories/api_repository/i_api_repository.dart';
import 'package:app_movie_api/core/services/dot_env_services.dart';
import 'package:dio/dio.dart';

class DioRepositorieImpl implements IApiRepository {
  final Dio _dio;

  DioRepositorieImpl(this._dio);

  @override
  Future<(String?, ApiResponseModel<T>?)> get<T>(String url) async {
    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {"Authorization": "Bearer ${DotEnvServices.getApiToken}"},
        ),
      );
      return (
        null,
        ApiResponseModel<T>(
            data: response.data as T, statusMessage: response.statusMessage)
      );
    } on DioException catch (dioException) {
      final errorMessage = dioException.message ?? ErrosConst.apidefaulterror;
      return (errorMessage, null);
    }
  }
}

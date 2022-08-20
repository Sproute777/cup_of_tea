import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../const/environment_config.dart';
import '../http/interceptors.dart';

@module
abstract class RegisterDio {
  @Named("BaseUrl")
  String get baseUrl => EnvironmentConfig.baseUrl;

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) {
    final interceptors = DioInterceptors();

    return Dio(BaseOptions(baseUrl: url))..interceptors.add(interceptors);
  }
}

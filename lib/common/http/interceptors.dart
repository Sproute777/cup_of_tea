import 'dart:developer';

import 'package:dio/dio.dart';

class DioInterceptors extends Interceptor {
  DioInterceptors();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // commented by Nightwelf 26.07.2022 20:27
    /// иначе не работает
    // options.headers.addAll(<String, dynamic>{
    //   "Authorization": "Bearer ${await GetIt.I.get<SecureStore>().token}"
    // });
    log('\u001b[35mURL: ${options.uri}');
    log('\u001b[35mREQUEST BODY: ${options.data}');
    log('\u001b[35mQUERY PARAMS: ${options.queryParameters}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('\u001b[32mRESPONSE: ${response.data}');
    log('\u001b[32mRESPONSE: ${response.extra}');
    log('\u001b[32mRESPONSE: ${response.toString()}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('\u001b[41mRESPONSE: ${err.message}');
    log('\u001b[41mRESPONSE: ${err.response}');
    super.onError(err, handler);
  }
}

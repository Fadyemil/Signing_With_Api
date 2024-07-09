import 'package:dio/dio.dart';
import 'package:sin_api/cache/cach_helper.dart';
import 'package:sin_api/core/Api/end_point.dart';

class ApiInterceptors extends Interceptor {
  ///~ Called when the request is about to be sent.
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'FOODAPI ${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}

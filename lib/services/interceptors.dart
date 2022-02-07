import 'dart:developer';
import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    log(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    log(data.toString());
    return data;
  }
}

class MovieApiInterceptor implements InterceptorContract {
  static const _apiKey = '052afdb6e0ab9af424e3f3c8edbb33fb';

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async =>
      data..params['api_key'] = _apiKey;

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}

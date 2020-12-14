import 'package:dio/dio.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HttpLite
 * Author: Jeek
 * Date: 2020/12/13
 * Description:
 */
class HttpLite{

  static Dio _dio;
  static HttpLite httpLite = HttpLite();

  static Dio createDio() {
    Dio dio = Dio(BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      sendTimeout: 15000,
      responseType: ResponseType.json,
    ));
    return dio;
  }

  static Future<Response> get(String url,Map<String,dynamic> params){
    if(_dio == null) {
      _dio = createDio();
    }
    return _dio.get(url,queryParameters: params);

  }

  static Future<Response> post(String url,Map<String,dynamic> params){
    if(_dio == null) {
      _dio = createDio();
    }
    return _dio.post(url,queryParameters: params);
  }

}
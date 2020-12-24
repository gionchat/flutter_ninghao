import 'dart:convert';

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

  static Dio createDio() {
    Dio dio = Dio(BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      sendTimeout: 15000,
      responseType: ResponseType.json,
    ));
    return dio;
  }

  static Future<Map<String,dynamic>> get(String url,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.get(url,queryParameters: params);
    return jsonDecode(respnse.data);

  }

  static Future<Map<String,dynamic>> post(String url,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.post(url,queryParameters: params);
    return jsonDecode(respnse.data);

  }

  static Future<Map<String,dynamic>> put(String url,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.put(url,queryParameters: params);
    return jsonDecode(respnse.data);

  }

  static Future<Map<String,dynamic>> delete(String url,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.delete(url,queryParameters: params);
    return jsonDecode(respnse.data);

  }

  static Future<Map<String,dynamic>> patch(String url,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.patch(url,queryParameters: params);
    return jsonDecode(respnse.data);

  }

}
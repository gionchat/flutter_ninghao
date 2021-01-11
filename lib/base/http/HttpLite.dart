import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HttpLite
 * Author: Jeek
 * Date: 2020/12/13
 * Description:
 */
class HttpLite{
  static final  String TAG = "HttpLite";
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
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)) {
      Fluttertoast.showToast(msg: "网络未连接");
      return null;
    }
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.get(url,queryParameters: params);
    Map data = jsonDecode(respnse.data);
    LogUtils.i(TAG, "url: ${url} | data => ${data.toString()}");
    return data;

  }

  static Future<Map<String,dynamic>> post(String url,Map<String,dynamic> params) async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)) {
      Fluttertoast.showToast(msg: "网络未连接");
      return null;
    }
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.post(url,queryParameters: params);
    Map data = jsonDecode(respnse.data);
    LogUtils.i(TAG, "url: ${url} | data => ${data.toString()}");
    return data;

  }

  static Future<Map<String,dynamic>> put(String url,Map<String,dynamic> params) async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)) {
      Fluttertoast.showToast(msg: "网络未连接");
      return null;
    }
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.put(url,queryParameters: params);
    Map data = jsonDecode(respnse.data);
    LogUtils.i(TAG, "url: ${url} | data => ${data.toString()}");
    return data;

  }

  static Future<Map<String,dynamic>> delete(String url,Map<String,dynamic> params) async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)) {
      Fluttertoast.showToast(msg: "网络未连接");
      return null;
    }
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.delete(url,queryParameters: params);
    Map data = jsonDecode(respnse.data);
    LogUtils.i(TAG, "url: ${url} | data => ${data.toString()}");
    return data;

  }

  static Future<Map<String,dynamic>> patch(String url,Map<String,dynamic> params) async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)) {
      Fluttertoast.showToast(msg: "网络未连接");
      return null;
    }
    if(_dio == null) {
      _dio = createDio();
    }
    Response<String> respnse = await _dio.patch(url,queryParameters: params);
    Map data = jsonDecode(respnse.data);
    LogUtils.i(TAG, "url: ${url} | data => ${data.toString()}");
    return data;

  }

}
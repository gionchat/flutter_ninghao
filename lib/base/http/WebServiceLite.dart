import 'package:dio/dio.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';
import 'package:flutter_ninghao/contants/Constants.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: WebServiceLite
 * Author: Jeek
 * Date: 2020/12/13
 * Description:
 */

class WebServiceLite{

  static final String TAG = "WebServiceLite";
  static Dio _dio;
  static Dio createDio() {
    Dio dio = Dio(BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      sendTimeout: 15000,
    ));
    return dio;
  }

  static Future<String> requsetURL(String url,String method,Map<String,dynamic> params) async{
    if(_dio == null) {
      _dio = createDio();
    }
    String jsonParams = params.toString();
    String webserviceParams =
        "<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\"> <soap12:Body> <${method} xmlns=\"http://www.suntront.com/\"> <visitorInfo>{\"OperatorCode\":\"18530881233\",\"Password\":\"888888\"}</visitorInfo> <jsonParams>${jsonParams}</jsonParams></${method}></soap12:Body></soap12:Envelope>";
    _dio.options.contentType = "text/xml";
    Response response = await _dio.post(
        "${url}?op=${method}",
        data: webserviceParams);
    String originData = response.data.toString();
    String data = originData.substring(originData.indexOf(">{") + 1,originData.indexOf("}<") + 1);
    LogUtils.i(TAG, "method: ${method} | data => $data");
    return data;
  }

  static Future<String> requset(String method,Map<String,dynamic> params) async{
    return await requsetURL(Constants.BASE_URL,method,params);
  }

}
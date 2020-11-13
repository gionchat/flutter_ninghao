import 'package:logger/logger.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: Log
 * Author: Jeek
 * Date: 2020/11/13
 * Description:
 */

class Log{

  static var log = Logger();

  static void v(dynamic msg){
    log.v("jeek Log $msg");
  }

  static void d(dynamic msg){
    log.d("jeek Log $msg");
  }

  static void i(dynamic msg){
    log.i("jeek Log $msg");
  }


  static void w(dynamic msg){
    log.w("jeek Log $msg");
  }

  static void e(dynamic msg){
    log.e("jeek Log $msg");
  }

}
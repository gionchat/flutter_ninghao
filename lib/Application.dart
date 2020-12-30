import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contants/Constants.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: Application
 * Author: Jeek
 * Date: 2020/12/14
 * Description:
 */
class Application{

  static SharedPreferences sp;
  static MethodChannel shareMethodChannel;

  static Future<Null> initSp() async {
    sp = await SharedPreferences.getInstance();
  }

  static void initChannelAndHandle() {
    shareMethodChannel = const MethodChannel(Constants.channel);
    shareMethodChannel.setMethodCallHandler((call) {
      if (call.method == Constants.methodImportChromeData) {
        print("jeek call.arguments: ${call.arguments}");
        return null;
      } else {
        return null;
      }
    });
  }

}
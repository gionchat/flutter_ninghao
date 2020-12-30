
import 'package:flutter_screenutil/flutter_screenutil.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ScreenAutoUtil
 * Author: Jeek
 * Date: 2020/12/30
 * Description: 屏幕自适应工具类
 */
class ScreenAutoUtil {

  static ScreenUtil _instance = ScreenUtil.getInstance();
  static double screenHighDp = ScreenUtil.screenHeightDp;

  static num setWidth(num width) {
    return _instance.setWidth(width);
  }

  static num setHeight(num height) {
    return _instance.setHeight(height);
  }
}
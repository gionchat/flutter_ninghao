import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ThemeProvider
 * Author: Jeek
 * Date: 2020/12/8
 * Description:
 */

class ThemeProvider with ChangeNotifier, DiagnosticableTreeMixin {

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark
  );

  static ThemeData light = ThemeData(
    brightness: Brightness.light
  );

  ThemeData currentTheme = dark;

  switchTheme(){
    currentTheme = currentTheme == dark?light:dark;
    notifyListeners();
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: CounterProvider
 * Author: Jeek
 * Date: 2020/12/8
 * Description:
 */

class CountProvider with ChangeNotifier, DiagnosticableTreeMixin {

  int count = 0;

  void add(){
    count ++;
    notifyListeners();
  }

  void minus(){
    count --;
    notifyListeners();
  }
}
import 'package:common_utils/common_utils.dart';
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: Logpage
 * Author: Jeek
 * Date: 2020/12/14
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';

void main() => runApp(Logpage());

final String TAG = "Logpage";

class Logpage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: LogpageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LogpageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LogpageState();
  }
}

class _LogpageState extends State<StatefulWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LogUtils.i(TAG, "aeesrt 测试");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Logpage"),
      ),
      body: Center(
        child: OutlineButton(
          child: Text("Log Test"),
          onPressed: (){
            LogUtils.i("TAG", "Log Test");
            int timeBefore = DateUtil.getNowDateMs();
            for(int i = 0; i < 10000; i++){
              print("Test lime log");
            }
            int timeAfter = DateUtil.getNowDateMs();
            int time = timeAfter - timeBefore;
            print("10000次print花费时间: $time");
          },
        ),
      ),
    );
  }
}
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: JPushPage
 * Author: Jeek
 * Date: 2020/12/24
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';
import 'package:flutter_ninghao/demo/page/AboutPage.dart';
import 'package:jpush_flutter/jpush_flutter.dart';
final String TAG = "JPushPage";

void main() => runApp(JPushPage());

class JPushPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      routes: {'/about': (context) => AboutPage(),},
      home: JPushPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class JPushPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _JPushPageState();
  }
}

class _JPushPageState extends State<StatefulWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    JPush jpush = new JPush();
    jpush.setup(
      appKey: "替换成你自己的 appKey",
      channel: "developer-default",
      production: false,
      debug: false,
    );
    jpush.addEventHandler(
      onReceiveNotification: (Map<String, dynamic> message) async {
        LogUtils.i(TAG, "jeek addEventHandler 接收测试 message: $message");
        //Navigator.pushNamed(context, '/about');
      },
      onOpenNotification: (Map<String, dynamic> message) async {
        LogUtils.i(TAG, "jeek addEventHandler 跳转测试 message: $message");
        Navigator.pushNamed(context, '/about');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("JPushPage"),
      ),
      body: Center(
        child: Text("JPushPage"),
      ),
    );
  }
}
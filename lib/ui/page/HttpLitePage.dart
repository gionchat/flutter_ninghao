/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HttpLitePage
 * Author: Jeek
 * Date: 2020/12/14
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/http/HttpLite.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';

void main() => runApp(HttpLitePage());
final String TAG = "HttpLitePage";

class HttpLitePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: HttpLitePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HttpLitePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HttpLitePageState();
  }
}

class _HttpLitePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpLitePage"),
      ),
      body: Center(
        child: OutlineButton(
          child: Text("Http Lite"),
          onPressed: () {
            LogUtils.i("TAG", "Log");
            //HttpLite.getInstance().
            HttpLite.get("https://www.baidu.com/", {})
                .then((value) => LogUtils.i(TAG, value));
          },
        ),
      ),
    );
  }
}

import 'package:common_utils/common_utils.dart';
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: WebServiceLitePage
 * Author: Jeek
 * Date: 2020/12/14
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/http/WebServiceLite.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';

void main() => runApp(WebServiceLitePage());
final String TAG = "WebServiceLitePage";
class WebServiceLitePage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: WebServiceLitePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class WebServiceLitePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WebServiceLitePageState();
  }
}

class _WebServiceLitePageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("WebServiceLitePage"),
      ),
      body: Center(
        child: OutlineButton(
          child: Text("WebService Lite Test"),
          onPressed: (){
            LogUtils.i("TAG", "WebService Lite Test");
            //Map<String,dynamic> params = Map<String,dynamic>();
            WebServiceLite.requset("Login", {"password":"12345678","userId":"15324878973"}).then((value) => LogUtils.i(TAG, value));
          },
        ),
      ),
    );
  }
}
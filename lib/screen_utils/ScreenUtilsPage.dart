/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ScreenUtilsPage
 * Author: Jeek
 * Date: 2020/12/31
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() => runApp(ScreenUtilsPage());

class ScreenUtilsPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        allowFontScaling: false,
        child:MaterialApp(
      home: ScreenUtilsPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    ));
  }
}

class ScreenUtilsPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScreenUtilsPageState();
  }
}

class _ScreenUtilsPageState extends State<StatefulWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenUtilsPage"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: ScreenUtil().setWidth(500),
          height: ScreenUtil().setHeight(500),
          color: Colors.blue,
          child: Text("ScreenUtilsPage",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
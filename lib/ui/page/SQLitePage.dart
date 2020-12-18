/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SQLitePage
 * Author: Jeek
 * Date: 2020/12/17
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';
final String TAG = "SQLitePage";
void main() => runApp(SQLitePage());

class SQLitePage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SQLitePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SQLitePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SQLitePageState();
  }
}

class _SQLitePageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SQLitePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "创建表");
            },child: Text("创建表"),),
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "数据库升级");
            },child: Text("数据库升级"),),

            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "增");
            },child: Text("增"),),
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "删");
            },child: Text("删"),),
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "改");
            },child: Text("改"),),
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "查");
            },child: Text("查"),),
            OutlineButton(onPressed: (){
              LogUtils.i(TAG, "事务处理");
            },child: Text("事务处理"),),
          ],
        ),
      ),
    );
  }
}
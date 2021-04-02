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
import 'package:flutter_ninghao/db/table/User.dart';

final String TAG = "SQLitePage";

void main() => runApp(SQLitePage());

class SQLitePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

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
  User user = User(phone: "16639439562",name: "jeek", age: 30, sex: 1);
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
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "数据库升级");
              },
              child: Text("数据库升级"),
            ),
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "增");
                user.name = "jeek";
                user.insert().then((value) => print("增： ${value}"));
              },
              child: Text("增"),
            ),
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "删");
                user.delete(key: "name",value: "jeek").then((value)  => print("删： ${value}"));
              },
              child: Text("删"),
            ),
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "改");
                user.name = "lijeek";
                user.update(key:"name", value:"jeek").then((value) => print("改： ${value}"));
              },
              child: Text("改"),
            ),
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "查");
                user.query(key: "name",value: "jeek").then((value) => print("查询： ${value.length}"));
              },
              child: Text("查"),
            ),
            OutlinedButton(
              onPressed: () {
                LogUtils.i(TAG, "事务处理");
                // batch = db.batch();
                // batch.insert('Test', {'name': 'item'});
                // batch.update('Test', {'name': 'new_item'}, where: 'name = ?', whereArgs: ['item']);
                // batch.delete('Test', where: 'name = ?', whereArgs: ['item']);
                // results = await batch.commit();
              },
              child: Text("事务处理"),
            ),
          ],
        ),
      ),
    );
  }
}

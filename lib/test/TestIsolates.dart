/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestIsolates
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(TestIsolates());

class TestIsolates extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TestIsolatesStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class TestIsolatesStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestIsolatesState();
  }
}

class _TestIsolatesState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TestIsolates Page"),
      ),
      body: Center(
        child: Text("TestIsolates"),
      ),
    );
  }
}
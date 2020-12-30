/**
 * Copyright (C), 2015-2020, suntront
 * FileName: FlutterToActivityPage
 * Author: Jeek
 * Date: 2020/12/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(FlutterToActivityPage());

class FlutterToActivityPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: FlutterToActivityPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class FlutterToActivityPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlutterToActivityPageState();
  }
}

class _FlutterToActivityPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterToActivityPage"),
      ),
      body: Center(
        child: Text("FlutterToActivityPage"),
      ),
    );
  }
}
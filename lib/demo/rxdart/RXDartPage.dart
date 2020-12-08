/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RXDartPage
 * Author: Jeek
 * Date: 2020/12/1
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(RXDartPage());

class RXDartPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: RXDartPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class RXDartPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RXDartPageState();
  }
}

class _RXDartPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RXDartPage"),
      ),
      body: Center(
        child: Text("RXDartPage"),
      ),
    );
  }
}
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StreamPage
 * Author: Jeek
 * Date: 2020/12/1
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(StreamPage());

class StreamPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StreamPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StreamPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StreamPageState();
  }
}

class _StreamPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamPage"),
      ),
      body: Center(
        child: Text("StreamPage"),
      ),
    );
  }
}
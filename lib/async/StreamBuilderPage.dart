/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StreamBuilderPage
 * Author: Jeek
 * Date: 2020/12/21
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(StreamBuilderPage());

class StreamBuilderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StreamBuilderPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StreamBuilderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StreamBuilderPageState();
  }
}

class _StreamBuilderPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilderPage"),
      ),
      body: Center(
        child: Text("StreamBuilderPage"),
      ),
    );
  }
}
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StackPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(StackPage());

class StackPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StackPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StackPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StackPageState();
  }
}

class _StackPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("StackPage Page"),
      ),
      body: Stack(
        children: [
          Positioned(
              right: 10,
              bottom: 10,
              child: Icon(
                Icons.ac_unit,
                color: Colors.blue,
              )),
          Positioned(
              left: 10,
              bottom: 10,
              child: Icon(
                Icons.person,
                color: Colors.blue,
              )),
          Positioned(
              right: 10,
              top: 10,
              child: Icon(
                Icons.ac_unit,
                color: Colors.blue,
              )),

          Positioned(
              left: 10,
              top: 10,
              child: Icon(
                Icons.ac_unit,
                color: Colors.blue,
              )),

          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.android_sharp,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}

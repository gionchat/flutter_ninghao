/**
 * Copyright (C), 2015-2021, suntront
 * FileName: Lesson1
 * Author: Jeek
 * Date: 2021/3/9
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(Lesson1());

class Lesson1 extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      home: Lesson1StatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Lesson1StatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Lesson1State();
  }
}

class _Lesson1State extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson1"),
      ),
      body: Center(
        child: Text("Lesson 123 456"),
      ),
    );
  }
}

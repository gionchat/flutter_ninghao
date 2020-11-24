/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HelloWordPage
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()=> runApp(HelloWordPage());


class HelloWordPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: HelloWordStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HelloWordStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloWordState();
  }
}

class _HelloWordState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWord Page"),
      ),
      body: Center(child: Text("Hello word"),),
    );
  }
}
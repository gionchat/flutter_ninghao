/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BackgroundPage
 * Author: Jeek
 * Date: 2020/12/29
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BackgroundPage());

class BackgroundPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BackgroundPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class BackgroundPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BackgroundPageState();
  }
}

class _BackgroundPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("BackgroundPage",style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 25),),
      ),
    );
  }
}
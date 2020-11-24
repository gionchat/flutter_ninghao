/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DrawerPage
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(DrawerPage());


class DrawerPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: DrawerStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class DrawerStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawerState();
  }
}

class _DrawerState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Page"),
      ),
      drawer: Container(
        width: 200,
        color: Colors.white70,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Drawer Test"),
          Text("Drawer Test"),
          Text("Drawer Test"),
          Text("Drawer Test")
        ],),
      ),
      body: null,
    );
  }
}
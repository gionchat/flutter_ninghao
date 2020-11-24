/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RoutesNamedPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/page/AboutPage.dart';

void main() => runApp(RoutesNamedPage());

class RoutesNamedPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      routes: {'/about': (context) => AboutPage(),},
      home: RoutesNamedPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class RoutesNamedPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RoutesNamedPageState();
  }
}

class _RoutesNamedPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RoutesNamedPage Page"),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              print("命名路由");
              Navigator.pushNamed(context, "/about");
            },
            child: Text("命名路由")),
      ),
    );
  }
}

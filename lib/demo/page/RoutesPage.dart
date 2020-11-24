/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RoutesPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/page/AboutPage.dart';

void main() => runApp(RoutesPage());

class RoutesPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: RoutesPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class RoutesPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RoutesPageState();
  }
}

class _RoutesPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RoutesPage Page"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("About"),
          onPressed: (){
            print("About");
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new AboutPage()),
            );
          },
        ),
      ),
    );
  }
}
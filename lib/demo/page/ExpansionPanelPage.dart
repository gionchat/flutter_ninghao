/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ExpansionPanelPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ExpansionPanelPage());

class ExpansionPanelPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: ExpansionPanelPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ExpansionPanelPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpansionPanelPageState();
  }
}

class _ExpansionPanelPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelPage"),
      ),
      body: Center(
        child: Text("ExpansionPanelPage"),
      ),
    );
  }
}
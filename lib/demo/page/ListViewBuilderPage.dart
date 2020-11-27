/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ListViewBuilderPage
 * Author: Jeek
 * Date: 2020/11/25
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/page/LVBuilderWidget.dart';

import 'PostShowPage.dart';

void main() => runApp(ListViewBuilderPage());

class ListViewBuilderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      routes: {
        '/PostShowPage': (context) => PostShowPage(),
      },
      home: ListViewBuilderPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ListViewBuilderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewBuilderPageState();
  }
}

class _ListViewBuilderPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilderPage Page"),
      ),
      body: LVBuilderWidget(),
    );
  }
}
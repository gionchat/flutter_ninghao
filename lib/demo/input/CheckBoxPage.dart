/**
 * Copyright (C), 2015-2020, suntront
 * FileName: CheckBoxPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CheckBoxPage());

class CheckBoxPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: CheckBoxPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class CheckBoxPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxPageState();
  }
}

class _CheckBoxPageState extends State<StatefulWidget> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxPage Page"),
      ),
      body: Center(
        child: Checkbox(
          value: checkBoxValue,
          onChanged: (value){
            setState(() {
              checkBoxValue = value;
            });
          },
        ),
      ),
    );
  }
}
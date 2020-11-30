/**
 * Copyright (C), 2015-2020, suntront
 * FileName: CheckBoxListTilePage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CheckBoxListTilePage());

class CheckBoxListTilePage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: CheckBoxListTilePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class CheckBoxListTilePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxListTilePageState();
  }
}

class _CheckBoxListTilePageState extends State<StatefulWidget> {

  bool checkBoxValueA =false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxListTilePage Page"),
      ),
      body: Center(
        child: CheckboxListTile(
          value: checkBoxValueA,
          onChanged: (value){
            setState(() {
              checkBoxValueA = value;
            });
          },
          title: Text("CheckBoxListTile"),
          subtitle: Text("infomation"),
          secondary: Icon(Icons.local_florist),
          selected: checkBoxValueA,
        ),
      ),
    );
  }
}
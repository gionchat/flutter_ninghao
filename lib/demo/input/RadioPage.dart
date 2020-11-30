/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RadioPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(RadioPage());

class RadioPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: RadioPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class RadioPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioPageState();
  }
}

class _RadioPageState extends State<StatefulWidget> {

  int radioGroupSex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioPage Page"),
      ),
      body: Center(
        child: Row(
          children: [
            Radio(
              value: 0,
              groupValue: radioGroupSex,
              activeColor: Colors.black,
              onChanged: (value){
                setState(() {
                  radioGroupSex = value;
                });
              },
            ),
            Radio(
              value: 1,
              groupValue: radioGroupSex,
              activeColor: Colors.black,
              onChanged: (value){
                setState(() {
                  radioGroupSex = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
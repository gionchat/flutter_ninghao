/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SwitchImagePage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(SwitchImagePage());

class SwitchImagePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SwitchImagePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SwitchImagePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchImagePageState();
  }
}

class _SwitchImagePageState extends State<StatefulWidget> {
  bool switchImage = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchImagePage Page"),
      ),
      body: Center(
        child: Switch(
            value: switchImage,
            activeThumbImage: AssetImage("res/imgs/active.png"),
            inactiveThumbImage: AssetImage("res/imgs/inactive.png"),
            onChanged: (value) {
              setState(() {
                switchImage = value;
              });
            }),
      ),
    );
  }
}

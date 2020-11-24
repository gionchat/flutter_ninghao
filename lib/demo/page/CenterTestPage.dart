/**
 * Copyright (C), 2015-2020, suntront
 * FileName: CenterTestPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CenterTestPage());

class CenterTestPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: CenterTestPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class CenterTestPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CenterTestPageState();
  }
}

class _CenterTestPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CenterTestPage Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Icon(Icons.desktop_windows_rounded,color: Colors.blue,size: 50,),
            Icon(Icons.wine_bar,color: Colors.red,size: 50,),
            Icon(Icons.phone_iphone,color: Colors.yellow,size: 50,),
            Icon(Icons.web,color: Colors.indigo,size: 50,)
          ],
        ),
      ),
    );
  }
}
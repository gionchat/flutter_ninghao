import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/page/TabBarWidget.dart';

import 'model/Post.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: main1
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

void main() => runApp(TestPage());

class TestPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TestStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class TestStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestState();
  }
}

class _TestState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: "tooltip iconbutton click",
          onPressed: (){
            print("iconbutton click");
          },
        ),
        title: Text("Test Page"),
        actions: [
          SizedBox(
            width: 15,
          ),
          IconButton(icon: Icon(Icons.tag), tooltip: "tooltips", onPressed: (){}),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.print),
        ],
      ),
      body: TabBarWidget(),
    );
  }
}

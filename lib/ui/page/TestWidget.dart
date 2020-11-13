/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestWidget
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */

import 'package:flutter/material.dart';

class TestWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestWidgetState();
  }
}

class _TestWidgetState extends State<TestWidgetPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TestWidget Page"),
      ),
      body: null,
    );
  }
}
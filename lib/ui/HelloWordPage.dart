
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HelloWordPage
 * Author: Jeek
 * Date: 2020/11/5
 * Description:
 */

import 'package:flutter/material.dart';

class HelloWordPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloWordState();
  }
}

class _HelloWordState extends State<HelloWordPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWord Page"),
      ),
      body: Center(child: Text("Hello Word"),),
    );
  }
}
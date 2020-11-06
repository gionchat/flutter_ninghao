/**
 * Copyright (C), 2015-2020, suntront
 * FileName: OppoPage
 * Author: Jeek
 * Date: 2020/10/26
 * Description:
 */

import 'package:flutter/material.dart';

class OppoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OppoState();
  }
}

class _OppoState extends State<OppoPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Oppo Page"),
      ),
      body: Center(child: Text("Oppo"),),
    );
  }
}
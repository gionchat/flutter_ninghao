/**
 * Copyright (C), 2015-2020, suntront
 * FileName: XiaoMIPage
 * Author: Jeek
 * Date: 2020/10/26
 * Description:
 */

import 'package:flutter/material.dart';

class XiaoMiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _XiaoMiState();
  }
}

class _XiaoMiState extends State<XiaoMiPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("XiaoMi Page"),
      ),
      body: Center(child: Text("XiaoMi"),),
    );
  }
}
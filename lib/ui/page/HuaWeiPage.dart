/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HuaWeiPage
 * Author: Jeek
 * Date: 2020/10/26
 * Description:
 */

import 'package:flutter/material.dart';

class HuaWeiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HuaWeiState();
  }
}

class _HuaWeiState extends State<HuaWeiPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HuaWei Page"),
      ),
      body: Center(child: Text("HuaWei"),),
    );
  }
}
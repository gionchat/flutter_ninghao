/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DrawerPage
 * Author: Jeek
 * Date: 2020/10/27
 * Description:
 */

import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawerState();
  }
}

class _DrawerState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Page"),
      ),
      body: Center(child: Text("DrawerPage"),),
    );
  }
}
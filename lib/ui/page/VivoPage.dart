/**
 * Copyright (C), 2015-2020, suntront
 * FileName: VivoPage
 * Author: Jeek
 * Date: 2020/10/26
 * Description:
 */
import 'package:flutter/material.dart';

class VivoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VivoState();
  }
}

class _VivoState extends State<VivoPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Vivo Page"),
      ),
      body: Center(child: Text("Vivo"),),
    );
  }
}
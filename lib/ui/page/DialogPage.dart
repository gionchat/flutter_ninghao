/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DialogPage
 * Author: Jeek
 * Date: 2020/10/27
 * Description:
 */

import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DialogState();
  }
}

class _DialogState extends State<DialogPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Page"),
      ),
      body: Center(child: FlatButton(
        child: Text("显示Dialog"),
        onPressed: (){

        },
      ),),
    );
  }
}
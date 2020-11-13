/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TextButtonPage
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */

import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextButtonState();
  }
}

class _TextButtonState extends State<TextButtonPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextButton Page"),
      ),
      body: Center(
        child: TextButton(child: Text("TextButton"),onPressed: (){
          print("TextButton");
        },),
      ),
    );
  }
}
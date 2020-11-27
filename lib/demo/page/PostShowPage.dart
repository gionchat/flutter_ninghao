/**
 * Copyright (C), 2015-2020, suntront
 * FileName: PostShowPage
 * Author: Jeek
 * Date: 2020/11/25
 * Description:
 */

import 'package:flutter/material.dart';

class PostShowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PostShowPageState();
  }
}

class _PostShowPageState extends State<PostShowPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PostShowPage"),
      ),
      body:Center(
        child: Text("PostShowPage"),
      ),
    );
  }
}
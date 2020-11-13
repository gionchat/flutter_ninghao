/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ColumnPage
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */
import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnState();
  }
}

class _ColumnState extends State<ColumnPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Page"),
      ),
      body: Column(
        children: [
          Text("Column LINE1"),
          Text("Column LINE2"),
          Text("Column LINE3"),
        ],
      ),
    );
  }
}
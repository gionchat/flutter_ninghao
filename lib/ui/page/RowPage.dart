/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RowPage
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */
import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RowState();
  }
}

class _RowState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Page"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
        child: Row(
          children: [
            Text("Row LINE1"),
            Expanded(
                child: Container(
                  height: 20.0,
                  alignment: Alignment.center,
              child: Text("Row LINE2"),
            )),
            Text("Row LINE3"),
          ],
        ),
      ),
    );
  }
}

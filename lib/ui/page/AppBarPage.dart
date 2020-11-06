/**
 * Copyright (C), 2015-2020, suntront
 * FileName: AppBarPage
 * Author: Jeek
 * Date: 2020/10/27
 * Description:
 */
import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppBarState();
  }
}

class _AppBarState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("AppBar Page"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_circle_up), onPressed: (){
            print("upload");
          })
        ],
      ),
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("AppBarPage"),
          ),
        ],
      ),
    );
  }
}

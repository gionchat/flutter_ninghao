/**
 * Copyright (C), 2015-2020, suntront
 * FileName: PageViewPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PageViewPage());

class PageViewPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: PageViewPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class PageViewPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PageViewPageState();
  }
}

class _PageViewPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PageViewPage Page"),
      ),
      body: PageView(
        onPageChanged: (index){
          print("pageview $index");
        },
        controller: PageController(
          initialPage: 1,
          keepPage: false
        ),
        children: [
          Container(
            color: Colors.brown[900],
            alignment: Alignment(0,0),
            child: Text("one",style: TextStyle(fontSize: 32.0,color: Colors.white),),
          ),
          Container(
            color: Colors.blue[900],
            alignment: Alignment(0,0),
            child: Text("two",style: TextStyle(fontSize: 32.0,color: Colors.white),),
          ),
          Container(
            color: Colors.yellow[900],
            alignment: Alignment(0,0),
            child: Text("three",style: TextStyle(fontSize: 32.0,color: Colors.white),),
          ),
          Container(
            color: Colors.red[900],
            alignment: Alignment(0,0),
            child: Text("four",style: TextStyle(fontSize: 32.0,color: Colors.white),),
          ),
          Container(
            color: Colors.pink[900],
            alignment: Alignment(0,0),
            child: Text("five",style: TextStyle(fontSize: 32.0,color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
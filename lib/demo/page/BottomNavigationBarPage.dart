/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BottomNavigationBarPage
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(BottomNavigationBarPage());

class BottomNavigationBarPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BottomNavigationBarStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class BottomNavigationBarStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<StatefulWidget> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Page"),
      ),
      body: Center(child: Text("BottomNavigationBarPage"),),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页"),),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("搜索")),
          BottomNavigationBarItem(icon: Icon(Icons.phone_iphone_outlined),title: Text("iPhone")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("我的")),
        ],
      ),
    );
  }
}
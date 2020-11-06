/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BottomNavigationBarPage
 * Author: Jeek
 * Date: 2020/10/26
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/iconfonts/Iconfonts.dart';

import 'HuaWeiPage.dart';
import 'OppoPage.dart';
import 'VivoPage.dart';
import 'XiaoMIPage.dart';

class BottomNavigationBarPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BottomNavigationBarStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.yellow),
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
  List<Widget> pages = [XiaoMiPage(),HuaWeiPage(),OppoPage(),VivoPage()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("BottomNavigationBar Page"),
//      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Iconfonts.xiaomi), label: "小米"),
          BottomNavigationBarItem(icon: Icon(Iconfonts.huawei), label: "华为"),
          BottomNavigationBarItem(icon: Icon(Iconfonts.oppo), label: "oppo"),
          BottomNavigationBarItem(icon: Icon(Iconfonts.vivo), label: "vivo"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}

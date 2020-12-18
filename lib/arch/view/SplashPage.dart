import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/arch/view/MainPage.dart';
import 'dart:io';
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SplashPage
 * Author: Jeek
 * Date: 2020/12/16
 * Description:
 */

final routes = {
  '/MainPage': (BuildContext context) => new MainPage(),
};

void main() => runApp(SplashPage());

class SplashPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(_style);
    }
    // TODO: implement build
    return MaterialApp(
      routes: routes,
      home: SplashPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SplashPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashPageState();
  }
}

class _SplashPageState extends State<StatefulWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
//      Navigator.push(
//        context,
//        new MaterialPageRoute(builder: (context) => new MainPage()),
//      );
      Navigator.popAndPushNamed(context, "/MainPage");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("res/imgs/splash.png"), fit: BoxFit.cover)),
      ),
    );
  }
}

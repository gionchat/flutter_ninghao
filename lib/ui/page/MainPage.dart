import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Animation1Page.dart';
import 'AppBarPage.dart';
import 'BeginPage.dart';
import 'DialogPage.dart';
import 'DrawerPage.dart';
import 'LoginPage.dart';
import 'SharedPreferencesDemo.dart';


class MainPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: MainStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MainStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainState();
  }
}

class _MainState extends State<StatefulWidget> {
  DateTime lastPopTime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15),
          children: [
              RaisedButton(
                  child: Text("Lesson1 LoginPage"),
                  onPressed: (){
                print("jeek btn Click LoginPage");
                Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new LoginPage()),
                    );
                  }),
            RaisedButton(
                child: Text("BeginPage"),
                onPressed: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new BeginPage()),
                );
              }),
            RaisedButton(
                child: Text("AppBarPage"),
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new AppBarPage()),
                  );
                }),
            RaisedButton(
                child: Text("DialogPage"),
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new DialogPage()),
                  );
                }),
            RaisedButton(
                child: Text("DrawerPage"),
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new DrawerPage()),
                  );
                }),
            RaisedButton(
                child: Text("Animation1Page"),
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Animation1Page()),
                  );
                }),

            RaisedButton(
                child: Text("SharedPreferencesDemo"),
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SharedPreferencesDemo()),
                  );
                }),

        ],)
      ),
      // ignore: missing_return
      onWillPop: (){
        if(lastPopTime == null || DateTime.now().difference(lastPopTime) > Duration(seconds: 2)){
          lastPopTime = DateTime.now();
          Fluttertoast.showToast(msg: "再按一次退出App");
        }else{
          lastPopTime = DateTime.now();
          SystemNavigator.pop(animated: true);
        }
      },
    );
  }
}
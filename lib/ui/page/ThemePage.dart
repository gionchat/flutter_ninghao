/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ThemePage
 * Author: Jeek
 * Date: 2020/11/20
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/utils/Log.dart';

void main() => runApp(new ThemePage());

ThemeMode themeMode = ThemeMode.light;

class ThemePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return new ThemeWidget();
  }
}


class ThemeWidget extends StatefulWidget {
  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
      themeMode: themeMode,
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}


class ThemeStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ThemeState();
  }
}

class _ThemeState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Modify Theme"),
            onPressed: () {
          Log.i("Theme Page");
          if(themeMode == ThemeMode.light){
            setState(() {
              themeMode = ThemeMode.dark;
            });
          }else{
            setState(() {
              themeMode = ThemeMode.light;
            });
          }

        }),
      ),
    );
  }
}

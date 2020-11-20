/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LoggerPage
 * Author: Jeek
 * Date: 2020/11/13
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoggerState();
  }
}

class _LoggerState extends State<LoggerPage> {
  static final String TAG = "LoggerPage";
  var log = Logger();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Logger Page"),
      ),
      body: Center(
        child: Column(
          children: [
             OutlineButton(
                 child: Text("Log v"),
                 onPressed: (){
                   log.v("jeek Logger is v");
  }),
            OutlineButton(
                child: Text("Log d"),
                onPressed: (){
                  log.d("jeek Logger is d");
                }),
            OutlineButton(
                child: Text("jeek Log i"),
                onPressed: (){
                  log.i("jeek Logger is i");
                }),
            OutlineButton(
                child: Text("jeek Log w"),
                onPressed: (){
                  log.w("Logger is w");
                }),
            OutlineButton(
                child: Text("jeek Log e"),
                onPressed: (){
                  log.e("jeek Logger is e");
                }),
          ],
        ),
      ),
    );
  }
}
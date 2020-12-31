/**
 * Copyright (C), 2015-2020, suntront
 * FileName: NoValueListenablePage
 * Author: Jeek
 * Date: 2020/12/31
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(NoValueListenablePage());

class NoValueListenablePage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: NoValueListenablePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class NoValueListenablePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NoValueListenablePageState();
  }
}

class _NoValueListenablePageState extends State<StatefulWidget> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("NoValueListenablePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(onPressed: (){
                  setState(() {
                    counter ++;
                  });
                },child: Text("+"),),
                OutlineButton(onPressed: (){
                  setState(() {
                    counter ++;
                  });
                },child: Text("-"),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
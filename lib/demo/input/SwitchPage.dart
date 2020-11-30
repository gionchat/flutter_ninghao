/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SwitchPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(SwitchPage());

class SwitchPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SwitchPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SwitchPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchPageState();
  }
}

class _SwitchPageState extends State<StatefulWidget> {
  bool switchValue = false;
  String text = "关";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchPage Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            Switch(
                value: switchValue,
                activeColor: Colors.yellow,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                    if(value){
                      text = "开";
                    }else{
                      text = "关";
                    }
                  });
                }),
          ],
        )
      ),
    );
  }
}

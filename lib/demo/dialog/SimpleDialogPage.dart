import 'package:device_preview/device_preview.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SimpleDialogPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(DevicePreview(builder: (context) => SimpleDialogPage()));

class SimpleDialogPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SimpleDialogPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SimpleDialogPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimpleDialogPageState();
  }
}

class _SimpleDialogPageState extends State<StatefulWidget> {
  String choose = "";

  Future openSampileDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            children: [
              SimpleDialogOption(
                child: Text("Options A"),
                onPressed: () {
                  Navigator.pop(context,"Options A");
                },
              ),
              SimpleDialogOption(
                child: Text("Options B"),
                onPressed: () {
                  Navigator.pop(context,"Options B");
                },
              ),
              SimpleDialogOption(
                child: Text("Options C"),
                onPressed: () {
                  Navigator.pop(context,"Options C");
                },
              ),
              SimpleDialogOption(
                child: Text("Options D"),
                onPressed: () {
                  Navigator.pop(context,"Options D");
                },
              ),
            ],
          );
        });
    print("jeek option: $option");
    if(option != null){
      switch(option){
        case "Options A":
          setState(() {
            choose = "A";
          });
          break;
        case "Options B":
          setState(() {
            choose = "B";
          });
          break;
        case "Options C":
          setState(() {
            choose = "C";
          });
          break;
        case "Options D":
          setState(() {
            choose = "D";
          });
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialogPage Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(choose),
            FlatButton(
                onPressed: () {
                  print("jeek SimpleDialog");
                  openSampileDialog();
                },
                child: Text("SimpleDialog"))
          ],
        ),
      ),
    );
  }
}

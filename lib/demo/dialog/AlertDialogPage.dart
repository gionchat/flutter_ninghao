/**
 * Copyright (C), 2015-2020, suntront
 * FileName: AlertDialogPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(AlertDialogPage());

class AlertDialogPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: AlertDialogPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class AlertDialogPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AlertDialogPageState();
  }
}

class _AlertDialogPageState extends State<StatefulWidget> {
  openAlertDialog() async{
    final choose = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("AlertDialog"),
            content: Text("Are you want to quit app?"),
            actions: [
              FlatButton(
                  onPressed: () {
                    print("OK");
                    Navigator.pop(context,"OK");
                  },
                  child: Text("OK")),
              FlatButton(
                onPressed: () {
                  print("Cancel");
                  Navigator.pop(context,"Cancel");
                },
                child: Text("Cancel"),
              ),
            ],
          );
        });

    if(choose != null){
      switch(choose){
        case "OK":
          print("switch OK");
          break;

        case "Cancel":
          print("switch Cancel");
          break;
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialogPage Page"),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: () {
            print("AlertDialog");
            openAlertDialog();
          },
          child: Text("AlertDialog"),
        ),
      ),
    );
  }
}

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DialogPage
 * Author: Jeek
 * Date: 2020/10/27
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter_ninghao/utils/Log.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DialogState();
  }
}

class _DialogState extends State<DialogPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Page"),
      ),
      body: Center(child: FlatButton(
        child: Text("显示Dialog"),
        onPressed: (){
          print("显示Dialog");
          showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Tips'),
                    content: Text('Are you sure to delete it?'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          print("cancel");
                        },
                      ),
                      FlatButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          print("OK");
                        },
                      ),
                    ],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  );
                });
          },
      ),),
    );
  }
}
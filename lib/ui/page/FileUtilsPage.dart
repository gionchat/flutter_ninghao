import 'dart:io';

/**
 * Copyright (C), 2015-2021, suntront
 * FileName: FileUtilsPage
 * Author: Jeek
 * Date: 2021/4/1
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/FileUtils.dart';

void main() => runApp(FileUtilsPage());

class FileUtilsPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      home: FileUtilsPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class FileUtilsPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FileUtilsPageState();
  }
}

class _FileUtilsPageState extends State<StatefulWidget> {
  String readData ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FileUtilsPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("读取数据：$readData "),
            OutlinedButton(
              onPressed: () {
                print("写入文件");
                FileUtils.writeStringAppend("content: 12345679\n");
              },
              child: Text("写入文件"),
            ),
            OutlinedButton(
              onPressed: () {
                print("读取文件");
                FileUtils.readString().then((value) {
                  setState(() {
                    readData = value;
                  });
                });
              },
              child: Text("读取文件"),
            ),
          ],
        ),
      ),
    );
  }
}

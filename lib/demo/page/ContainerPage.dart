/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ContainerPage
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ContainerPage());

class ContainerPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: ContainerStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ContainerStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerState();
  }
}

class _ContainerState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Page"),
      ),
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                //borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.pool,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

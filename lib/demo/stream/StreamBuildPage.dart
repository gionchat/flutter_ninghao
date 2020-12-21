import 'dart:async';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StreamBuildPage
 * Author: Jeek
 * Date: 2020/12/21
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(StreamBuildPage());

class StreamBuildPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StreamBuildPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StreamBuildPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StreamBuildPageState();
  }
}

class _StreamBuildPageState extends State<StatefulWidget> {

  StreamController<String> streamController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController = StreamController<String>();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuildPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("StreamBuild Page"),
            StreamBuilder(
              initialData: "init stream",
              stream: streamController.stream,
              builder: (context,snapshot){
                return Text(snapshot.data);
              },
            ),
          ],
        ),
      ),
    );
  }
}
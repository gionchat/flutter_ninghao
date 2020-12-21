import 'dart:async';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StreamPage
 * Author: Jeek
 * Date: 2020/12/1
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';

void main() => runApp(StreamPage());
final String TAG = "StreamPage";

class StreamPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StreamPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StreamPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StreamPageState();
  }
}

class _StreamPageState extends State<StatefulWidget> {
  StreamSubscription streamSubscription = null;
  StreamController<String> streamController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LogUtils.i(TAG, "jeek create Stream");
    //Stream<String> stream = Stream.fromFuture(fetchData());
    streamController = StreamController<String>();
    LogUtils.i(TAG, "jeek listen Stream");
    streamSubscription =
        streamController.stream.listen(onData, onError: onError, onDone: onDone);
    LogUtils.i(TAG, "jeek init complete");
  }

  void onData(String data) {
    LogUtils.i(TAG, "jeek stream.listen onData: $data");
  }

  void onDone() {
    LogUtils.i(TAG, "jeek stream.listen onDone");
  }

  void onError(error) {
    LogUtils.i(TAG, "jeek stream.listen onError: $error");
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return "Hello Word";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamPage"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              onPressed: () {
                LogUtils.i(TAG, "jeek StreamSubscription Pause");
              },
              child: Text("Pause"),
            ),

            OutlineButton(
              onPressed: () {
                LogUtils.i(TAG, "jeek StreamSubscription Resume");
              },
              child: Text("Resume"),
            ),


            OutlineButton(
              onPressed: () {
                LogUtils.i(TAG, "jeek StreamSubscription Cancel");
              },
              child: Text("Cancel"),
            ),
          ],
        ),
      ),
    );
  }
}

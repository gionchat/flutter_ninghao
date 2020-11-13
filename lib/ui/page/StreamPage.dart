/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StreamPage
 * Author: Jeek
 * Date: 2020/11/13
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter_ninghao/utils/Log.dart';

class StreamPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StreamState();
  }
}

class _StreamState extends State<StreamPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Page"),
      ),
      body: Center(child: Column(
        children: [
          OutlineButton(
              child: Text("Future创建Stream"),
              onPressed: (){
                Log.d("Future创建Stream");
                _streamFromFuture();
              })
        ],
      ),),
    );
  }
}

Future<String> _getData() async {
  await Future.delayed(Duration(seconds: 3));
  return '当前时间为：${DateTime.now()}';
}

_streamFromFuture() {
  Stream.fromFuture(_getData())
      .listen((event) => Log.i('Stream.fromFuture -> $event'))
      .onDone(() => Log.i('Stream.fromFuture -> done 结束'));
}
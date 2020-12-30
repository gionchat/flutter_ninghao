import 'dart:convert';
import 'dart:io';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: WebSocketPage
 * Author: Jeek
 * Date: 2020/12/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/LogUtils.dart';

final String TAG = "WebSocketPage";

void main() => runApp(WebSocketPage());

class WebSocketPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: WebSocketPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class WebSocketPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WebSocketPageState();
  }
}

class _WebSocketPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("WebSocketPage"),
      ),
      body: Center(
        child:OutlinedButton(
          child: Text("Tcp 发送数据测试"),
          onPressed: () async{
            LogUtils.i(TAG, "jeek Tcp 发送数据测试");
            // Dart client
            Socket socket = await Socket.connect('192.168.2.5', 8266);
            print('connected');
            // listen to the received data event stream
            socket.listen((List<int> event) {
              print(utf8.decode(event));
              if(utf8.decode(event).contains("ok")){
                socket.close();
              }
            });
            // send hello
            socket.add(utf8.encode('jeek send data from client'));
            // wait 5 seconds
            await Future.delayed(Duration(seconds: 60));

            // .. and close the socket
            socket.close();
          },
        ),
      ),
    );
  }
}

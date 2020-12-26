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

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

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
          onPressed: (){
            LogUtils.i(TAG, "jeek Tcp 发送数据测试");
            // Dart client
            IO.Socket socket = IO.io('http://192.168.2.5:8266',OptionBuilder()
                .setTransports(['websocket']) // for Flutter or Dart VM
                .disableAutoConnect()  // disable auto-connection
                .setExtraHeaders({'foo': 'bar'}) // optional
                .build());
            socket.onConnect((_) {
              print('connect');
              socket.emit('msg', 'test 123');
            });
            socket.on('event', (data) => print(data));
            socket.onDisconnect((_) => print('disconnect'));
            socket.on('fromServer', (_) => print(_));
          },
        ),
      ),
    );
  }
}

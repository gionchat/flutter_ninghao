import 'dart:convert';
import 'dart:io';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SocketPage
 * Author: Jeek
 * Date: 2020/11/12
 * Description:
 */
import 'package:flutter/material.dart';

class SocketPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SocketState();
  }
}

class _SocketState extends State<SocketPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Socket Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            //建立连接
            var socket = await Socket.connect("192.168.2.5", 8989);
            //根据http协议，发送请求头
            socket.writeln("GET / HTTP/1.1");
            socket.writeln("Host:baidu.com");
            socket.writeln("Connection:close");
            socket.writeln();
            await socket.flush(); //发送
            //读取返回内容
//            String response = await socket.transform(utf8.decoder).join();
//            print("jeek socket response: $response");
            await socket.close();
          },
        ),
      ),
    );
  }
}

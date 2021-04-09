import 'dart:async';

/**
 * Copyright (C), 2015-2021, suntront
 * FileName: PlatformChannelPage
 * Author: Jeek
 * Date: 2021/4/1
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PlatformChannelPage());

class PlatformChannelPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      home: PlatformChannelPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class PlatformChannelPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatformChannelPageState();
  }
}

class _PlatformChannelPageState extends State<StatefulWidget> {
  static const eventChannel = EventChannel("event_channel_sample");

  StreamSubscription _streamSubscription;

  String eventMessage = "";

  void _onEvent(Object event) {
    setState(() {
      if (_streamSubscription != null) {
        eventMessage = event.toString();
      }
    });
  }

  void _onError(Object error) {
    setState(() {
      if (_streamSubscription != null) {
        eventMessage = "error";
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventMessage = "";
    _streamSubscription = eventChannel
        .receiveBroadcastStream()
        .listen(_onEvent, onError: _onError);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _streamSubscription.cancel();
    _streamSubscription = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlatformChannelPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                print("MessageChannel");
                sayHelloToNative("lijeek").then((value) =>
                    print("MessageChannel sayHelloToNative: $value"));
              },
              child: Text("MessageChannel"),
            ),
            OutlinedButton(
              onPressed: () {
                print("MethodChannel");
                getUserInfo("getInfo", userName: "rocx").then(
                    (value) => print("MethodChannel getUserInfo: $value"));
              },
              child: Text("MethodChannel"),
            ),
            OutlinedButton(
              onPressed: () {
                print("EventChannel");
              },
              child: Text("EventChannel"),
            ),
            Text("eventMessage: $eventMessage"),
          ],
        ),
      ),
    );
  }

  //TODO: MethodChannel begin
  Future<dynamic> getUserInfo(String method, {String userName}) async {
    const methodChannel = MethodChannel("method_channel_sample");
    return await methodChannel.invokeMethod(method, userName);
  }

  //TODO: BasicMessageChannel begin
  Future<dynamic> sayHelloToNative(String message) async {
    const basicMessageChannel = BasicMessageChannel(
        "basic_message_channel_sample", StandardMessageCodec());
    String reply = await basicMessageChannel.send(message);
    return reply;
  }

//TODO: EventChannel begin



}

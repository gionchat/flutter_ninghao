import 'dart:isolate';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestIsolate
 * Author: Jeek
 * Date: 2020/12/16
 * Description:
 */

String desc = "我是世界最棒的";

main(List<String> args){
  desc = "我是世界最棒的";
  ReceivePort receivePort = ReceivePort();

  Isolate.spawn(spawnFunc, receivePort.sendPort);
  receivePort.listen((message) {
    print("ReceivePort listen $message");
  });

  receivePort.sendPort.send("必须可以呀！！！！");
}

void spawnFunc(SendPort sendPort){
  ReceivePort receivePort = ReceivePort();
  sendPort.send("我想和你通信可以吗?");
  receivePort.listen((message) {
    print("spawnFunc message=> $message");
  });

}

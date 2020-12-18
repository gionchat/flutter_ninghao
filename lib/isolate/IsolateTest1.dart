import 'dart:isolate';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: IsolateTest1
 * Author: Jeek
 * Date: 2020/12/18
 * Description:
 */

main(List<String> args) {
  print("Hello Word");
  start();
}

//在父Isolate中调用
Isolate isolate;

start() async {
  ReceivePort receivePort = ReceivePort();
  //创建子Isolate对象
  isolate = await Isolate.spawn(getMsg, receivePort.sendPort);
  //监听子Isolate的返回数据
  receivePort.listen((data) {
    print('data：$data');
    receivePort.close();
    //关闭Isolate对象
    isolate?.kill(priority: Isolate.immediate);
    isolate = null;
  });
}

//子Isolate对象的入口函数，可以在该函数中做耗时操作
getMsg(sendPort) => Future.delayed(Duration(seconds: 10), () {
      sendPort.send("hello");
    });

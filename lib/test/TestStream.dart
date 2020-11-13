/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestStream
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */

void main(){
testStream();
}

void testStream(){
  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(new Duration(seconds: 2),(){
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data){
    print(data);
  }, onError: (e){
    print(e.message);
  },onDone: (){

  });
}
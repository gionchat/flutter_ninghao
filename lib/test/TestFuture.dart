/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestFuture
 * Author: Jeek
 * Date: 2020/11/10
 * Description:
 */

void main() {
  futureWait();
}


void futureWait(){
  Future.wait([
    // 2秒后返回结果
    Future.delayed(new Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果
    Future.delayed(new Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results){
    print(results[0]+results[1]);
  }).catchError((e){
    print(e);
  });
}
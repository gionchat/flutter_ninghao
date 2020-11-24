/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BasicWidget
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BasicWidgetPage());


class BasicWidgetPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BasicWidgetStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class BasicWidgetStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BasicWidgetState();
  }
}

class _BasicWidgetState extends State<StatefulWidget> {

  final String title ="将进酒";
  final String author = "李白";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BasicWidget Page"),
      ),
      body: Column(
        children: [
          Text("$title -- 作者: $author\n 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不愿醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。",
            textAlign: TextAlign.left,),
          RichText(text: TextSpan(
            text: "君不见，黄河之水天上来，奔流到海不复回。",
            children: [
              TextSpan(
                  text: "君不见，高堂明镜悲白发，朝如青丝暮成雪。",
                  children: [

              ]),
            ]
          ))
        ],
      ),
    );
  }
}
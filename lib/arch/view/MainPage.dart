/**
 * Copyright (C), 2015-2020, suntront
 * FileName: MainPage
 * Author: Jeek
 * Date: 2020/12/16
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter_ninghao/arch/view/widget/DouBanAppBar.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: DouBanAppBar(title: "首页",back: true).build(context),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
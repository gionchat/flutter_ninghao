import 'dart:developer';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StfProviderPage
 * Author: Jeek
 * Date: 2020/12/8
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'logic/CounterProvider.dart';

void main() => runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CountProvider()),
    ],
    child: StfProviderPage()));

class StfProviderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: StfProviderPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StfProviderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StfProviderPageState();
  }
}

class _StfProviderPageState extends State<StatefulWidget> {

//  CountProvider provider = Provider.

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("StfProviderPage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlineButton(onPressed: (){
                context.read<CountProvider>().add();
              },child: Text("+"),),
              Text("${context.watch<CountProvider>().count}"),
              OutlineButton(onPressed: (){
                context.read<CountProvider>().minus();
              },child: Text("-"),)
            ],
          ),
        ),
      );
  }
}
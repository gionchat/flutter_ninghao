/**
 * Copyright (C), 2015-2020, suntront
 * FileName: StlProviderPage
 * Author: Jeek
 * Date: 2020/12/8
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'logic/CounterProvider.dart';

void main() => runApp(StlProviderPage());

class StlProviderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CountProvider()),
          ],
          child: StlProviderPageStatefulWidget()),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class StlProviderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StlProviderPageState();
  }
}

class _StlProviderPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StlProviderPage"),
      ),
      body: Center(
        child: HomeWidget(),
      ),
    );
  }
}


class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineButton(onPressed: (){
          context.read<CountProvider>().add();
        },child: Text("+"),),
        Text("数值:${context.watch<CountProvider>().count}"),
        OutlineButton(onPressed: (){
          context.read<CountProvider>().minus();
        },child: Text("-"),),
      ],
    );
  }
}
